//
//  StravaStyleKit.swift
//  Strava
//
//  Created by Brennan Stehling on 8/27/16.
//  Copyright (c) 2016 BikeALot LLC. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class StravaStyleKit : NSObject {

    //// Cache

    private struct Cache {
        static var imageOfStrava: UIImage?
        static var stravaTargets: [AnyObject]?
        static var imageOfTitleLogo: UIImage?
        static var titleLogoTargets: [AnyObject]?
    }

    //// Drawing Methods

    public class func drawStrava() {
        //// Color Declarations
        let logoColor = UIColor(red: 0.969, green: 0.439, blue: 0.255, alpha: 1.000)

        //// Logo
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPoint(x: 266.01, y: 40.56))
        bezierPath.addCurveToPoint(CGPoint(x: 244.88, y: 81.64), controlPoint1: CGPoint(x: 254.58, y: 62.96), controlPoint2: CGPoint(x: 245.08, y: 81.45))
        bezierPath.addCurveToPoint(CGPoint(x: 230.2, y: 60.89), controlPoint1: CGPoint(x: 244.54, y: 82.03), controlPoint2: CGPoint(x: 230.54, y: 62.19))
        bezierPath.addCurveToPoint(CGPoint(x: 231.99, y: 59.29), controlPoint1: CGPoint(x: 230.1, y: 60.55), controlPoint2: CGPoint(x: 230.93, y: 59.82))
        bezierPath.addCurveToPoint(CGPoint(x: 236.35, y: 56.25), controlPoint1: CGPoint(x: 233.06, y: 58.71), controlPoint2: CGPoint(x: 235, y: 57.36))
        bezierPath.addCurveToPoint(CGPoint(x: 246.29, y: 32.89), controlPoint1: CGPoint(x: 243.67, y: 50.12), controlPoint2: CGPoint(x: 246.68, y: 43.07))
        bezierPath.addCurveToPoint(CGPoint(x: 242.02, y: 18.79), controlPoint1: CGPoint(x: 246.05, y: 26.76), controlPoint2: CGPoint(x: 244.93, y: 23.14))
        bezierPath.addCurveToPoint(CGPoint(x: 224.72, y: 6.68), controlPoint1: CGPoint(x: 238, y: 12.76), controlPoint2: CGPoint(x: 232.96, y: 9.24))
        bezierPath.addLineToPoint(CGPoint(x: 220.17, y: 5.28))
        bezierPath.addLineToPoint(CGPoint(x: 193.32, y: 5.09))
        bezierPath.addLineToPoint(CGPoint(x: 166.52, y: 4.94))
        bezierPath.addLineToPoint(CGPoint(x: 166.52, y: 47.27))
        bezierPath.addLineToPoint(CGPoint(x: 166.52, y: 89.61))
        bezierPath.addLineToPoint(CGPoint(x: 180.48, y: 89.61))
        bezierPath.addLineToPoint(CGPoint(x: 194.48, y: 89.61))
        bezierPath.addLineToPoint(CGPoint(x: 194.48, y: 77.44))
        bezierPath.addLineToPoint(CGPoint(x: 194.48, y: 65.28))
        bezierPath.addLineToPoint(CGPoint(x: 197.83, y: 65.28))
        bezierPath.addLineToPoint(CGPoint(x: 201.17, y: 65.28))
        bezierPath.addLineToPoint(CGPoint(x: 209.12, y: 77.44))
        bezierPath.addLineToPoint(CGPoint(x: 217.11, y: 89.61))
        bezierPath.addLineToPoint(CGPoint(x: 242.31, y: 89.61))
        bezierPath.addLineToPoint(CGPoint(x: 267.51, y: 89.61))
        bezierPath.addLineToPoint(CGPoint(x: 277.11, y: 71.36))
        bezierPath.addCurveToPoint(CGPoint(x: 287.05, y: 53.4), controlPoint1: CGPoint(x: 282.39, y: 61.32), controlPoint2: CGPoint(x: 286.85, y: 53.26))
        bezierPath.addCurveToPoint(CGPoint(x: 296.59, y: 71.55), controlPoint1: CGPoint(x: 287.19, y: 53.6), controlPoint2: CGPoint(x: 291.5, y: 61.76))
        bezierPath.addLineToPoint(CGPoint(x: 305.8, y: 89.37))
        bezierPath.addLineToPoint(CGPoint(x: 319.13, y: 89.51))
        bezierPath.addLineToPoint(CGPoint(x: 332.45, y: 89.66))
        bezierPath.addLineToPoint(CGPoint(x: 309.97, y: 45.15))
        bezierPath.addCurveToPoint(CGPoint(x: 287.14, y: 0.31), controlPoint1: CGPoint(x: 297.61, y: 20.68), controlPoint2: CGPoint(x: 287.34, y: 0.5))
        bezierPath.addCurveToPoint(CGPoint(x: 266.01, y: 40.56), controlPoint1: CGPoint(x: 286.95, y: 0.07), controlPoint2: CGPoint(x: 277.4, y: 18.21))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: 214.21, y: 29.7))
        bezierPath.addCurveToPoint(CGPoint(x: 217.89, y: 36.41), controlPoint1: CGPoint(x: 216.82, y: 31.1), controlPoint2: CGPoint(x: 217.89, y: 33.03))
        bezierPath.addCurveToPoint(CGPoint(x: 212.36, y: 44.47), controlPoint1: CGPoint(x: 217.89, y: 40.42), controlPoint2: CGPoint(x: 215.95, y: 43.27))
        bezierPath.addCurveToPoint(CGPoint(x: 202.53, y: 45.01), controlPoint1: CGPoint(x: 211.35, y: 44.76), controlPoint2: CGPoint(x: 207.23, y: 45.01))
        bezierPath.addLineToPoint(CGPoint(x: 194.48, y: 45.01))
        bezierPath.addLineToPoint(CGPoint(x: 194.48, y: 36.61))
        bezierPath.addLineToPoint(CGPoint(x: 194.48, y: 28.21))
        bezierPath.addLineToPoint(CGPoint(x: 203.25, y: 28.4))
        bezierPath.addCurveToPoint(CGPoint(x: 214.21, y: 29.7), controlPoint1: CGPoint(x: 211.2, y: 28.54), controlPoint2: CGPoint(x: 212.22, y: 28.69))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: 413.39, y: 1.75))
        bezierPath.addCurveToPoint(CGPoint(x: 390.71, y: 46.41), controlPoint1: CGPoint(x: 412.85, y: 2.86), controlPoint2: CGPoint(x: 402.63, y: 22.95))
        bezierPath.addCurveToPoint(CGPoint(x: 369.04, y: 89.37), controlPoint1: CGPoint(x: 378.78, y: 69.86), controlPoint2: CGPoint(x: 369.04, y: 89.17))
        bezierPath.addCurveToPoint(CGPoint(x: 382.47, y: 89.66), controlPoint1: CGPoint(x: 369.04, y: 89.51), controlPoint2: CGPoint(x: 375.05, y: 89.66))
        bezierPath.addLineToPoint(CGPoint(x: 395.89, y: 89.66))
        bezierPath.addLineToPoint(CGPoint(x: 402.53, y: 76.57))
        bezierPath.addCurveToPoint(CGPoint(x: 411.93, y: 58.23), controlPoint1: CGPoint(x: 406.17, y: 69.38), controlPoint2: CGPoint(x: 410.43, y: 61.18))
        bezierPath.addLineToPoint(CGPoint(x: 414.74, y: 52.97))
        bezierPath.addLineToPoint(CGPoint(x: 423.95, y: 71.31))
        bezierPath.addLineToPoint(CGPoint(x: 433.16, y: 89.61))
        bezierPath.addLineToPoint(CGPoint(x: 446.68, y: 89.61))
        bezierPath.addCurveToPoint(CGPoint(x: 460.01, y: 89.22), controlPoint1: CGPoint(x: 454.09, y: 89.61), controlPoint2: CGPoint(x: 460.1, y: 89.46))
        bezierPath.addCurveToPoint(CGPoint(x: 414.5, y: 0.02), controlPoint1: CGPoint(x: 459.72, y: 88.59), controlPoint2: CGPoint(x: 414.69, y: 0.21))
        bezierPath.addCurveToPoint(CGPoint(x: 413.39, y: 1.75), controlPoint1: CGPoint(x: 414.45, y: -0.08), controlPoint2: CGPoint(x: 413.92, y: 0.69))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: 38.24, y: 3.49))
        bezierPath.addCurveToPoint(CGPoint(x: 8.82, y: 33.13), controlPoint1: CGPoint(x: 18.86, y: 5.76), controlPoint2: CGPoint(x: 8.19, y: 16.43))
        bezierPath.addCurveToPoint(CGPoint(x: 10.67, y: 41.63), controlPoint1: CGPoint(x: 9.02, y: 37.67), controlPoint2: CGPoint(x: 9.21, y: 38.63))
        bezierPath.addCurveToPoint(CGPoint(x: 29.61, y: 55.43), controlPoint1: CGPoint(x: 13.62, y: 47.56), controlPoint2: CGPoint(x: 19.92, y: 52.15))
        bezierPath.addCurveToPoint(CGPoint(x: 41.54, y: 58.47), controlPoint1: CGPoint(x: 31.65, y: 56.11), controlPoint2: CGPoint(x: 37.03, y: 57.51))
        bezierPath.addCurveToPoint(CGPoint(x: 54.67, y: 62.38), controlPoint1: CGPoint(x: 51.23, y: 60.6), controlPoint2: CGPoint(x: 52.83, y: 61.08))
        bezierPath.addCurveToPoint(CGPoint(x: 54.96, y: 67.31), controlPoint1: CGPoint(x: 56.41, y: 63.59), controlPoint2: CGPoint(x: 56.56, y: 65.81))
        bezierPath.addCurveToPoint(CGPoint(x: 21.28, y: 60.64), controlPoint1: CGPoint(x: 50.79, y: 71.22), controlPoint2: CGPoint(x: 32.09, y: 67.5))
        bezierPath.addCurveToPoint(CGPoint(x: 18.52, y: 59.53), controlPoint1: CGPoint(x: 19.87, y: 59.68), controlPoint2: CGPoint(x: 18.71, y: 59.24))
        bezierPath.addCurveToPoint(CGPoint(x: 11.1, y: 68.51), controlPoint1: CGPoint(x: 18.32, y: 59.82), controlPoint2: CGPoint(x: 14.98, y: 63.88))
        bezierPath.addCurveToPoint(CGPoint(x: 4.22, y: 77.2), controlPoint1: CGPoint(x: 7.22, y: 73.2), controlPoint2: CGPoint(x: 4.12, y: 77.11))
        bezierPath.addCurveToPoint(CGPoint(x: 16.77, y: 84.49), controlPoint1: CGPoint(x: 5, y: 77.93), controlPoint2: CGPoint(x: 13.38, y: 82.8))
        bezierPath.addCurveToPoint(CGPoint(x: 48.32, y: 90.52), controlPoint1: CGPoint(x: 26.51, y: 89.37), controlPoint2: CGPoint(x: 34.31, y: 90.86))
        bezierPath.addCurveToPoint(CGPoint(x: 62.18, y: 89.17), controlPoint1: CGPoint(x: 55.83, y: 90.33), controlPoint2: CGPoint(x: 58.79, y: 90.04))
        bezierPath.addCurveToPoint(CGPoint(x: 84.62, y: 66.92), controlPoint1: CGPoint(x: 75.27, y: 85.84), controlPoint2: CGPoint(x: 83.16, y: 78.02))
        bezierPath.addCurveToPoint(CGPoint(x: 82.78, y: 52.25), controlPoint1: CGPoint(x: 85.3, y: 61.76), controlPoint2: CGPoint(x: 84.62, y: 56.2))
        bezierPath.addCurveToPoint(CGPoint(x: 54.04, y: 36.17), controlPoint1: CGPoint(x: 79, y: 43.99), controlPoint2: CGPoint(x: 72.79, y: 40.52))
        bezierPath.addCurveToPoint(CGPoint(x: 38.1, y: 30.72), controlPoint1: CGPoint(x: 41.92, y: 33.32), controlPoint2: CGPoint(x: 39.36, y: 32.45))
        bezierPath.addCurveToPoint(CGPoint(x: 37.56, y: 27.92), controlPoint1: CGPoint(x: 37.27, y: 29.61), controlPoint2: CGPoint(x: 37.13, y: 29.03))
        bezierPath.addCurveToPoint(CGPoint(x: 63.83, y: 30.52), controlPoint1: CGPoint(x: 39.11, y: 23.52), controlPoint2: CGPoint(x: 52.39, y: 24.88))
        bezierPath.addLineToPoint(CGPoint(x: 69.26, y: 33.23))
        bezierPath.addLineToPoint(CGPoint(x: 75.99, y: 24.1))
        bezierPath.addLineToPoint(CGPoint(x: 82.73, y: 14.98))
        bezierPath.addLineToPoint(CGPoint(x: 81.52, y: 14.02))
        bezierPath.addCurveToPoint(CGPoint(x: 69.64, y: 7.45), controlPoint1: CGPoint(x: 79.38, y: 12.33), controlPoint2: CGPoint(x: 73.42, y: 9))
        bezierPath.addCurveToPoint(CGPoint(x: 38.24, y: 3.49), controlPoint1: CGPoint(x: 60.48, y: 3.69), controlPoint2: CGPoint(x: 48.95, y: 2.24))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: 83.55, y: 16.62))
        bezierPath.addLineToPoint(CGPoint(x: 83.55, y: 28.3))
        bezierPath.addLineToPoint(CGPoint(x: 96.15, y: 28.4))
        bezierPath.addLineToPoint(CGPoint(x: 108.75, y: 28.54))
        bezierPath.addLineToPoint(CGPoint(x: 108.85, y: 59.1))
        bezierPath.addLineToPoint(CGPoint(x: 109, y: 89.61))
        bezierPath.addLineToPoint(CGPoint(x: 123, y: 89.61))
        bezierPath.addLineToPoint(CGPoint(x: 137.01, y: 89.61))
        bezierPath.addLineToPoint(CGPoint(x: 137.01, y: 58.96))
        bezierPath.addLineToPoint(CGPoint(x: 137.01, y: 28.3))
        bezierPath.addLineToPoint(CGPoint(x: 149.7, y: 28.3))
        bezierPath.addLineToPoint(CGPoint(x: 162.45, y: 28.3))
        bezierPath.addLineToPoint(CGPoint(x: 162.45, y: 16.62))
        bezierPath.addLineToPoint(CGPoint(x: 162.45, y: 4.99))
        bezierPath.addLineToPoint(CGPoint(x: 123, y: 4.99))
        bezierPath.addLineToPoint(CGPoint(x: 83.55, y: 4.99))
        bezierPath.addLineToPoint(CGPoint(x: 83.55, y: 16.62))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: 305.41, y: 5.28))
        bezierPath.addCurveToPoint(CGPoint(x: 350.77, y: 93.81), controlPoint1: CGPoint(x: 305.41, y: 6.15), controlPoint2: CGPoint(x: 350.48, y: 94.1))
        bezierPath.addCurveToPoint(CGPoint(x: 395.89, y: 5.37), controlPoint1: CGPoint(x: 351.02, y: 93.47), controlPoint2: CGPoint(x: 395.41, y: 6.58))
        bezierPath.addCurveToPoint(CGPoint(x: 382.56, y: 4.99), controlPoint1: CGPoint(x: 395.99, y: 5.18), controlPoint2: CGPoint(x: 389.98, y: 4.99))
        bezierPath.addLineToPoint(CGPoint(x: 369.04, y: 4.99))
        bezierPath.addLineToPoint(CGPoint(x: 359.93, y: 23.04))
        bezierPath.addLineToPoint(CGPoint(x: 350.87, y: 41.14))
        bezierPath.addLineToPoint(CGPoint(x: 347.82, y: 35.35))
        bezierPath.addCurveToPoint(CGPoint(x: 338.46, y: 17.3), controlPoint1: CGPoint(x: 346.12, y: 32.17), controlPoint2: CGPoint(x: 341.9, y: 24.06))
        bezierPath.addLineToPoint(CGPoint(x: 332.21, y: 4.99))
        bezierPath.addLineToPoint(CGPoint(x: 318.84, y: 4.99))
        bezierPath.addCurveToPoint(CGPoint(x: 305.41, y: 5.28), controlPoint1: CGPoint(x: 311.47, y: 4.99), controlPoint2: CGPoint(x: 305.41, y: 5.13))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: 430.59, y: 5.95))
        bezierPath.addCurveToPoint(CGPoint(x: 432.24, y: 6.58), controlPoint1: CGPoint(x: 430.59, y: 6.24), controlPoint2: CGPoint(x: 431.32, y: 6.53))
        bezierPath.addLineToPoint(CGPoint(x: 433.89, y: 6.77))
        bezierPath.addLineToPoint(CGPoint(x: 434.03, y: 11.7))
        bezierPath.addCurveToPoint(CGPoint(x: 435.19, y: 11.55), controlPoint1: CGPoint(x: 434.22, y: 18.26), controlPoint2: CGPoint(x: 435.19, y: 18.17))
        bezierPath.addLineToPoint(CGPoint(x: 435.19, y: 6.49))
        bezierPath.addLineToPoint(CGPoint(x: 436.94, y: 6.49))
        bezierPath.addCurveToPoint(CGPoint(x: 438.73, y: 6), controlPoint1: CGPoint(x: 437.91, y: 6.49), controlPoint2: CGPoint(x: 438.73, y: 6.29))
        bezierPath.addCurveToPoint(CGPoint(x: 434.66, y: 5.47), controlPoint1: CGPoint(x: 438.73, y: 5.71), controlPoint2: CGPoint(x: 437.04, y: 5.47))
        bezierPath.addCurveToPoint(CGPoint(x: 430.59, y: 5.95), controlPoint1: CGPoint(x: 432.43, y: 5.47), controlPoint2: CGPoint(x: 430.59, y: 5.71))
        bezierPath.closePath()
        bezierPath.moveToPoint(CGPoint(x: 440.09, y: 8.17))
        bezierPath.addCurveToPoint(CGPoint(x: 440.19, y: 16.62), controlPoint1: CGPoint(x: 439.6, y: 11.99), controlPoint2: CGPoint(x: 439.7, y: 16.62))
        bezierPath.addCurveToPoint(CGPoint(x: 441.3, y: 10.4), controlPoint1: CGPoint(x: 440.82, y: 16.62), controlPoint2: CGPoint(x: 441.3, y: 14.02))
        bezierPath.addCurveToPoint(CGPoint(x: 441.59, y: 7.69), controlPoint1: CGPoint(x: 441.3, y: 8.75), controlPoint2: CGPoint(x: 441.4, y: 7.5))
        bezierPath.addCurveToPoint(CGPoint(x: 443.34, y: 11.94), controlPoint1: CGPoint(x: 441.78, y: 7.84), controlPoint2: CGPoint(x: 442.56, y: 9.77))
        bezierPath.addCurveToPoint(CGPoint(x: 445.42, y: 16.04), controlPoint1: CGPoint(x: 444.06, y: 14.11), controlPoint2: CGPoint(x: 445.03, y: 15.95))
        bezierPath.addCurveToPoint(CGPoint(x: 447.65, y: 11.7), controlPoint1: CGPoint(x: 445.9, y: 16.14), controlPoint2: CGPoint(x: 446.63, y: 14.74))
        bezierPath.addLineToPoint(CGPoint(x: 449.15, y: 7.26))
        bezierPath.addLineToPoint(CGPoint(x: 449.59, y: 11.94))
        bezierPath.addCurveToPoint(CGPoint(x: 450.7, y: 16.62), controlPoint1: CGPoint(x: 449.93, y: 15.13), controlPoint2: CGPoint(x: 450.27, y: 16.62))
        bezierPath.addCurveToPoint(CGPoint(x: 450.65, y: 7.6), controlPoint1: CGPoint(x: 451.33, y: 16.62), controlPoint2: CGPoint(x: 451.33, y: 13.1))
        bezierPath.addCurveToPoint(CGPoint(x: 449.3, y: 5.57), controlPoint1: CGPoint(x: 450.41, y: 5.76), controlPoint2: CGPoint(x: 450.22, y: 5.47))
        bezierPath.addCurveToPoint(CGPoint(x: 446.82, y: 10.06), controlPoint1: CGPoint(x: 448.38, y: 5.71), controlPoint2: CGPoint(x: 447.94, y: 6.58))
        bezierPath.addCurveToPoint(CGPoint(x: 444.89, y: 12.91), controlPoint1: CGPoint(x: 445.52, y: 14.26), controlPoint2: CGPoint(x: 445.47, y: 14.35))
        bezierPath.addCurveToPoint(CGPoint(x: 443.43, y: 8.46), controlPoint1: CGPoint(x: 444.55, y: 12.08), controlPoint2: CGPoint(x: 443.92, y: 10.11))
        bezierPath.addCurveToPoint(CGPoint(x: 441.49, y: 5.52), controlPoint1: CGPoint(x: 442.71, y: 6.05), controlPoint2: CGPoint(x: 442.37, y: 5.52))
        bezierPath.addCurveToPoint(CGPoint(x: 440.09, y: 8.17), controlPoint1: CGPoint(x: 440.57, y: 5.52), controlPoint2: CGPoint(x: 440.33, y: 5.91))
        bezierPath.closePath()
        logoColor.setFill()
        bezierPath.fill()
    }

    public class func drawTitleLogo() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Symbol Drawing
        let symbolRect = CGRect(x: 0, y: 0, width: 150, height: 30)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)
        CGContextScaleCTM(context, symbolRect.size.width / 460, symbolRect.size.height / 95)

        StravaStyleKit.drawStrava()
        CGContextRestoreGState(context)
    }

    //// Generated Images

    public class var imageOfStrava: UIImage {
        if Cache.imageOfStrava != nil {
            return Cache.imageOfStrava!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 460, height: 95), false, 0)
            StravaStyleKit.drawStrava()

        Cache.imageOfStrava = UIGraphicsGetImageFromCurrentImageContext().imageWithRenderingMode(.AlwaysTemplate)
        UIGraphicsEndImageContext()

        return Cache.imageOfStrava!
    }

    public class var imageOfTitleLogo: UIImage {
        if Cache.imageOfTitleLogo != nil {
            return Cache.imageOfTitleLogo!
        }

        UIGraphicsBeginImageContextWithOptions(CGSize(width: 150, height: 30), false, 0)
            StravaStyleKit.drawTitleLogo()

        Cache.imageOfTitleLogo = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return Cache.imageOfTitleLogo!
    }

    //// Customization Infrastructure

    @IBOutlet var stravaTargets: [AnyObject]! {
        get { return Cache.stravaTargets }
        set {
            Cache.stravaTargets = newValue
            for target: AnyObject in newValue {
                target.performSelector(NSSelectorFromString("setImage:"), withObject: StravaStyleKit.imageOfStrava)
            }
        }
    }

    @IBOutlet var titleLogoTargets: [AnyObject]! {
        get { return Cache.titleLogoTargets }
        set {
            Cache.titleLogoTargets = newValue
            for target: AnyObject in newValue {
                target.performSelector(NSSelectorFromString("setImage:"), withObject: StravaStyleKit.imageOfTitleLogo)
            }
        }
    }

}
