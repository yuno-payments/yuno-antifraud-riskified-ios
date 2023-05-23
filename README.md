# YunoAntifraudRiskified

[![License](https://img.shields.io/cocoapods/l/YunoSDK.svg?style=flat)](https://cocoapods.org/pods/YunoSDK)
[![iOS Minimum Deploy Target - 13.0](https://img.shields.io/static/v1?label=iOS+Minimum+Deploy+Target&message=13.0&color=2ea44f)](https://)


Add Riskified antifraud provider to [YunoSDK](https://github.com/yuno-payments/yuno-sdk-ios)
‍
> **Note**
> Using this repo will install YunoSDK as well

## Installation

### [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html)

To integrate YunoAntifraudRiskified with Cocoapods, please add the line below to your Podfile and run pod install.

```ruby
pod 'YunoAntifraudRiskified', '~> 1.0.0'
```

Then run pod install in your directory:

```shell
$ pod install
```
### [Swift Package Manager](https://swift.org/package-manager/)

Once you have your Swift package set up, adding YunoSDK as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/yuno-payments/yuno-antifraud-riskified-ios.git", .upToNextMajor(from: "1.0.0"))
]
```

## Usage
YunoSDK minimum required version is iOS 13.0

Initialize Riskified right after you initialize MyDK as follows:
```swift
import YunoAntifraudRiskified

YunoAntifraudRiskified.initialize()
```

there you go to go 

## Author

Yuno Payments Inc.

## License

YunoSDK is available under the MIT license. See the LICENSE file for more info.