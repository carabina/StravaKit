//
//  StravaActivity.swift
//  StravaKit
//
//  Created by Brennan Stehling on 8/22/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

import Foundation

internal enum ActivityResourcePath: String {
    case Activities = "/api/v3/athlete/activities"
    case Activity = "/api/v3/activities/:id"
    case Following = "/api/v3/activities/following"
}

public extension Strava {

    // Gets activities for current athlete
    // Docs: http://strava.github.io/api/v3/activities/#get-activities
    static func getActivities(completionHandler:((activities: [Activity]?, error: NSError?) -> ())?) -> NSURLSessionTask? {
        let path = ActivityResourcePath.Activities.rawValue

        return request(.GET, authenticated: true, path: path, params: nil) { (response, error) in
            if let error = error {
                completionHandler?(activities: nil, error: error)
                return
            }

            handleActivitiesResponse(response, completionHandler: completionHandler)
        }
    }

    // Gets activity detail
    // Docs: http://strava.github.io/api/v3/activities/#get-details
    static func getActivity(activityId: Int, completionHandler:((activity: Activity?, error: NSError?) -> ())?) -> NSURLSessionTask? {
        let path = ActivityResourcePath.Activity.rawValue.stringByReplacingOccurrencesOfString(":id", withString: String(activityId))

        return request(.GET, authenticated: true, path: path, params: nil) { (response, error) in
            if let error = error {
                completionHandler?(activity: nil, error: error)
                return
            }

            handleActivityResponse(response, completionHandler: completionHandler)
        }
    }

    // Gets following activities (friends)
    // Docs: http://strava.github.io/api/v3/activities/#get-feed
    static func getFollowingActivities(completionHandler:((activities: [Activity]?, error: NSError?) -> ())?) -> NSURLSessionTask? {
        let path = ActivityResourcePath.Following.rawValue

        return request(.GET, authenticated: true, path: path, params: nil) { (response, error) in
            if let error = error {
                completionHandler?(activities: nil, error: error)
                return
            }

            handleActivitiesResponse(response, completionHandler: completionHandler)
        }
    }

    internal static func handleActivitiesResponse(response: AnyObject?, completionHandler: ((activities: [Activity]?, error: NSError?) -> ())?) {
        var activities: [Activity] = []
        if let json = response as? JSONArray {
            for dictionary in json {
                if let activity = Activity(dictionary: dictionary) {
                    activities.append(activity)
                }
            }
        }

        dispatch_async(dispatch_get_main_queue()) {
            completionHandler?(activities: activities, error: nil)
        }
    }

    internal static func handleActivityResponse(response: AnyObject?, completionHandler:((activity: Activity?, error: NSError?) -> ())?) {
        if let dictionary = response as? JSONDictionary,
            let activity = Activity(dictionary: dictionary) {
            dispatch_async(dispatch_get_main_queue()) {
                completionHandler?(activity: activity, error: nil)
            }
        }
        else {
            dispatch_async(dispatch_get_main_queue()) {
                let error = Strava.error(.InvalidResponse, reason: "Invalid Response")
                completionHandler?(activity: nil, error: error)
            }
        }
    }

}
