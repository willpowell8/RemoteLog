# RemoteLog - Easiest remote logging and support framework for iOS iPad and iPhone
This quick and easy to use framework allows you to connect remotely to a device and retrieve a full log of what is going on and even screenshots of what the user can see and is doing.

[![CI Status](http://img.shields.io/travis/willpowell8/RemoteLog.svg?style=flat)](https://travis-ci.org/willpowell8/RemoteLog)
[![Version](https://img.shields.io/cocoapods/v/RemoteLog.svg?style=flat)](http://cocoapods.org/pods/RemoteLog)
[![License](https://img.shields.io/cocoapods/l/RemoteLog.svg?style=flat)](http://cocoapods.org/pods/RemoteLog)
[![Platform](https://img.shields.io/cocoapods/p/RemoteLog.svg?style=flat)](http://cocoapods.org/pods/RemoteLog)

## Events Logged by Remote Log
##### Console Print
Any print events written within the application will be fed to the remote logging framework.
##### Network request
Any request made within the application will be logged as far as URL, duration etc. to make it easy to see what is going on from a network stance.
##### User Button Touch Event
RemoteLog inteligently works out what is happening within app and we are building out events monitoring for components. RemoteLog monitors the events from buttons so if a user touches up on a screen and there is an attached event the application will take a screenshot and record the touch events for the application and report it as a single event to the support user.
##### View Controller Appear
One of the biggest events of an application is when the view controller changes. Therefore RemoteLog inteligently understands these events and can relay screenshots to support.
## Sample User Journey
RemoteLog is not designed to be on permanently, but is designed to find out what is going wrong for a user and what the user can see during testing or production deployment.
- User is within app and comes across issue
- User contacts support and asks for help. Support can ask User to shake device and then start RemoteLog
- RemoteLog provides a uuid that the User tells support
- Support can now enter the uuid within the support app or the mac client to see the realtime log from the device
- User can now perform same issue again and support can see exactly what is happening on device

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first. This shows the RemoteLog Framework integrated and it shows the connected uuid string at the bottom of the screen.

## Requirements

## Installation

First you need to add RemoteLog to your project. It is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile and then pod install:

```swift
pod "RemoteLog"
```
To include it within your application import the RemoteLogLibrary within your AppDelegate 
```swift
import "RemoteLogLibrary"
```
Then add the RemoteLog to your application at in the didFinishLaunchingWithOptions
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    RemoteLog.load() // this sets up the remote logging session
    
    return true
}
```
The to start the logging service use the following code
```swift
RemoteLog.start() // this starts the logging process
```
## Author

willpowell8, willpowell8@gmail.com

## License

RemoteLog is available under the MIT license. See the LICENSE file for more info.
