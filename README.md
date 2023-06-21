# DebugFrame

DebugFrame lib - a simple and powerful tool that can help you build your SwiftUI views easily.

Under the hood it's a modifier that can be applied to any SwiftUI view. It adds an overlay to your view, which displays a border around the view, along with frame information, such as the view’s origin and size. This can be incredibly helpful when trying to identify layout issues, such as views that are too large or small or views that are positioned incorrectly.

## Integration

#### Setup with SPM:

`DebugFrame` or `https://github.com/vdshko/DebugFrame`

#### Setup with CocoaPods:

`pod 'DebugFrame'`

## Usage
```swift
VStack {
  title
    .debugFrame()
  Spacer()
  rectangles
    .debugFrame(color: .black)
  Spacer()
}
.debugFrame(color: .black, .size)
```

<img width="436" alt="Screenshot of an app using DebugFrame. There are a few colored rectangles, and each one has a dotted line overlay and text showing the width and height." src="https://user-images.githubusercontent.com/43936569/230239666-4d91d59b-84a9-4a49-9db4-e2f5d8168470.png">
