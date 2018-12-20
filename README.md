# KSFacebookButton

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods](https://img.shields.io/cocoapods/v/KSFacebookButton.svg)](http://cocoapods.org/pods/KSFacebookButton)
[![Platform](https://img.shields.io/cocoapods/p/KSFacebookButton.svg?)](http://cocoadocs.org/docsets/KSFacebookButton)
[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/Carthage/Carthage/master/LICENSE.md)

**KSFacebookButton** is a simple custom button which look exactly the same as FBSDKLoginButton. The problem with FBSDKLoginButton is that it do not allow any customization on the look and feel of the button. With **KSFacebookButton** you can change the title, width and height or even corner radius of the button easily.


## Requirements

* Xcode 10 or later
* iOS 8.0 or later
* Swift 4.3 or later

## Features

* Support XCode storybord

## Example

Clone / download and open ```KSFacebookButtonExample.xcworkspace``` to see **KSFacebookButton** in action.
Here are few examples:

![](README-Assets/example1.png)
![](README-Assets/example2.png)
![](README-Assets/example3.png)

## Installation

### CocoaPods
``` ruby
pod 'KSFacebookButton'
```

### Carthage
``` ruby
github "LeeKahSeng/KSFacebookButton"
```
1. After finish building the framework using Carthage, open XCode and select you project in the project navigator.
2. At ```Build Phases``` tab, add ```KSFacebookButton.framework``` to ```Link Binary with Libraries```.
3. At ```General``` tab, add ```KSFacebookButton.framework``` to ```Embedded Binaries```.

**Note: If using Carthage for installation, ```IBDesignable``` and ```IBInspectable``` will not work due Xcode limitation. Details information can be found [here](https://github.com/Carthage/Carthage/issues/335).**

### Manually
1. Download the project.
2. Drag the ```Sources``` folder in ```\KSFacebookButton\KSFacebookButton``` into your XCode project.
3. Build & run.


## How to use
### Storyboard
1. Drag a UIButton to your view controller.
2. Open Indentity Inspector and change button class to KSFacebookButton.
3. Open Indentity Inspector and change button module to KSFacebookButton. (This step only required when install using CocoaPods or Carthage)
4. Open Attribute Inspector and select "Custom" as button type.
5. Change the button size, corner radius and title base on your needs using storyboard.
6. Build & run.

### Code
Make sure you import KSFacebookButton if you are using CocoaPods or Carthage.
```swift
import KSFacebookButton
```
KSFacebookButton can be initialize and configure just like normal UIButton.
```swift
let facebookButton = KSFacebookButton(frame: CGRect(x: 20, y: 20, width: 200, height: 55))
facebookButton.cornerRadius = 3.0
facebookButton.setTitle("Login with Facebook", for: .normal)
facebookButton.addTarget(self, action: #selector(facebookButtonDidTapped(sender:)), for: .touchUpInside)
view.addSubview(facebookButton)
```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).
