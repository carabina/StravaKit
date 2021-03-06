# StravaKit

API client for Strava written in Swift.

![](Strava.png)

## CocoaPods

[StravaKit](https://github.com/brennanMKE/StravaKit) is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'StravaKit', '~> 0.1'
```

## Carthage

StravaKit can also be built using [Carthage](https://github.com/carthage/carthage). 

Add the following line to your Cartfile:

```sh
github "brennanMKE/StravaKit" ~> 0.1
```

## Docs

[Strava Labs](http://labs.strava.com/developers/) provides an [API Reference](http://strava.github.io/api/). It includes specifications for working with OAuth and the various REST endpoints. Discussions on the API can be found in the [Developer Forum](https://groups.google.com/d/forum/strava-api).

## Examples

A demo application is included with StravaKit along with a comprehensive collection of tests which demonstrate how StravaKit can be used.

### Authorizing with OAuth

Strava uses [OAuth 2.0](https://oauth.net/2/) for authorizing access to the API on behalf of the user. You will need to register your own application and get a Client ID and Client Secret to allow your app to use OAuth with Strava. For an iOS app the web view which is used is the Safari View Controller which gives the user access to their existing browser session outside your app. It will allow them to log into Strava more easily to allow for giving your app permission to get an access token. Once access has been granted the `redirectURI` will be used to open your app which must be configured with a URL Scheme. For the demo app the URL Scheme is defined in the `Info.plist` with a key named `CFBundleURLTypes`. You can copy this configuration and change the values to suit your app.

### User Login

Returns a URL which can be used to open the login web page for Strava.

```swift
let redirectURI = "stravademo://localhost/oauth/signin"
Strava.set(clientId: clientId, clientSecret: clientSecret, redirectURI: redirectURI)

if let URL = Strava.userLogin(scope: .Public) {
    let vc = SFSafariViewController(URL: URL, entersReaderIfAvailable: false)
    presentViewController(vc, animated: true, completion: nil)
    // hold onto the vc to dismiss later 
    self.safariViewController = vc
}
```

### Open URL

When the `redirectURI` is used it will cause a method in your `AppDelegate` to be run. The `openURL` method which is provided by StravaKit will determine if an opened URL should be used for OAuth authorization.

```swift
func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
    return Strava.openURL(url, sourceApplication: sourceApplication)
}
```

If the URL which opened the app includes a code to use for getting an access token it will be used and once it is successful a notification will be broadcast to indicate that it has completed. 

```swift
internal func stravaAuthorizationCompleted(notification: NSNotification?) {
    self.safariViewController?.dismissViewControllerAnimated(true, completion: nil)
    self.safariViewController = nil
    if let userInfo = notification?.userInfo {
        if let status = userInfo[StravaStatusKey] as? String {
            if status == StravaStatusSuccessValue {
                // TODO: change UI for authorized state
            }
            else if let error = userInfo[StravaErrorKey] as? NSError {
                print("Error: \(error.localizedDescription)")
            }
        }
    }
}
```

### Deauthorize

Once the authorization steps have beenc completed successfully the access token and athlete profile have been securely stored in the user's Keychain for use whenever they use your app. If they ever want to remove the access token and athlete profile they can deauthorize their session with Strava.

```swift
Strava.deauthorize { (success, error) in
    self.refreshUI()
    if success {
        // TODO: change UI for authorized state
    }
    else {
        // TODO: warn user that deauthorization failed
        if let error = error {
            print("Error: \(error.localizedDescription)")
        }
    }
}
```

With a valid access token, which is managed for you by StravaKit, you can use various API endpoints.

### Get Athlete

Fetches the profile for the currently authorized athlete.

```swift
Strava.getAthlete { (athlete, error) in }
```

### Get Athlete

Fetches an athlete profile using their ID.

```swift
Strava.getAthlete(athleteId) { (athlete, error) in }
```

## Get Stats

Fetches stats for the currently authorized athlete. 

```swift
Strava.getStats(athleteId, completionHandler: { (stats, error) in }
```

### Get Activities

Fetches activities for the currently authorized athlete.

```swift
Strava.getActivities { (activities, error) in }
```

### Get Activity

Fetches activities for the currently authorized athlete.

```swift
Strava.getActivity(firstActivity.activityId, completionHandler: { (activity, error) in }
```

### Get Activities of Friends (Following)

Fetches activities for other athletes the current athlete is following.

```swift
Strava.getFollowingActivities { (activities, error) in }
```

Not all endpoints have been implemented in StravaKit. See Contributions below.

## Contributions

Assistance with adding new functionality, fix a bug or report a bug is welcome. For new functionality you can browse the `To Do List` for missing features and once you've decided what you'd like to add you can create a new issue to let others know you are going to be preparing an update. Fork the main repository, prepare your update with tests and submit a `Pull Request`. For bugs, if you plan on fixing them yourself, please also fork the repository, include tests and submit a `Pull Request`. If you've discovered a bug place create a new issue. It is possible the issue has already been logged so look before adding a new issue.

If there is a feature that you feel is important and would like it implemented sooner you can create an issue and invite others to comment on it and use the reactions feature to indicate that they also are interested in that feature. The feature requests with more positive reactions will get priority.

 * [To Do List](TODO.md)
 * [GitHub Issues](https://github.com/brennanMKE/StravaKit/issues)

## Purpose and Goals

The StravaKit framework is meanted to be a Swift implementation of a Strava API client. The goal is to make it fully functional so that it can be used to build any iOS or potentially Mac, Apple TV or watchOS app. Dependencies will be kept at a minimum. While StravaKit will be made available via CocoaPods and Carthage, it will not have any dependencies itself. It will also not load in UIKit so that it will be possible to use for developing a Mac app.

## License

MIT

## Author

Brennan Stehling - 2016
