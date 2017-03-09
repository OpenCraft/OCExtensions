# OCExtensions

[![Swift 3.0 compatible](https://img.shields.io/badge/Swift_3.0-compatible-4BC51D.svg?style=flat)](https://developer.apple.com/swift)
[![Build Status](https://www.bitrise.io/app/e583054e2704b298.svg?token=4dghJ7Cn1-PWA5JJW0nQDQ)](https://www.bitrise.io/app/e583054e2704b298)
[![Version](https://img.shields.io/cocoapods/v/OCExtensions.svg?style=flat)](http://cocoapods.org/pods/OCExtensions)
[![License](https://img.shields.io/cocoapods/l/OCExtensions.svg?style=flat)](http://cocoapods.org/pods/OCExtensions)
[![Platform](https://img.shields.io/cocoapods/p/OCExtensions.svg?style=flat)](http://cocoapods.org/pods/OCExtensions)

## Requirements

It requires Xcode 8.0+ and Swift 3.0.

Your project deployment target must be `iOS 8.0+`

## Installation

OCExtensions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'OCExtensions'
```

## Documentation
- [Color](#color)
- [Image](#image)
- [TextField](#text-field)
- [View](#view)
 - [Badge](#badge)
 - [Layer](#layer)
- [ViewController](#view-controller)

### Color
```swift
// Get an image representation from a color.
// Default size: 1x1px
func image(withSize size: CGSize? = nil) -> UIImage?

// Example
let redImage = UIColor.redColor().image()
```

### Image
```swift
// Instantiate an image with a color.
// Default size: 1x1px
convenience init?(color: UIColor, size: CGSize? = nil)

// Example
let redImage = UIImage(color: UIColor.redColor())
```

### TextField
```swift
// Returns a non-optional String value.
var textValue: String

// Check if text input is empty.
var isEmpty: Bool
```

### View
```swift
// TODO: documentation
```

#### Badge
```swift
// TODO: documentation
```

#### Layer
```swift
// Intantiate a Gradient Layer passing only the frame, orientation and color array
convenience init(frame: CGRect, orientation: GradientOrientation, colors: [CGColor])
```

### ViewController
```swift
// TODO: documentation
```

## Author

Henrique Morbin, morbin_@hotmail.com

## License

OCExtensions is available under the MIT license. See the LICENSE file for more info.
