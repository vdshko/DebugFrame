# DebugFrame

DebugFrame lib is a simple and powerful tool that can help you build your SwiftUI views easily.

- Under the hood, it's a modifier that can be applied to any SwiftUI view. It adds an overlay to your view, which displays a border around the view and frame information, such as the view’s origin and size. This can be incredibly helpful when identifying layout issues, such as views that are too large or small or views that are positioned incorrectly.

- Another feature is a debugBackground extension for the View, with a randomly picked Color each re-render time.

## Integration

#### Setup with SPM:

`DebugFrame` or `https://github.com/vdshko/DebugFrame`

#### Setup with CocoaPods:

`pod 'DebugFrame'`

## Usage of .debugFrame()
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

## Usage of .debugBackground()
```swift
VStack {
  title
    .debugBackground()
  Spacer()
}
```
<img width="371" alt="Screenshot of an app using DebugFrame. There is a title text with a randomly colored background rectangle version 1." src="https://github.com/vdshko/DebugFrame/assets/43936569/51e1590e-f373-4b39-abce-829d55e461fe">
<img width="372" alt="Screenshot of an app using DebugFrame. There is a title text with a randomly colored background rectangle version 2." src="https://github.com/vdshko/DebugFrame/assets/43936569/9ca22439-39c1-4a5b-91b2-15988eae6e4a">
