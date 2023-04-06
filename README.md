# DebugFrame

DebugFrame is a modifier for SwiftUI view, which is very easy to use and add to any view you want. This modifier adds the overlay with stroke border and CGFrame parameters on your view. The modifier is so useful during making UI on your project using SwiftUI of course.

## Integration

#### Setup with SPM:

`DebugFrame` or `https://github.com/vdshko/DebugFrame`

#### Setup with CocoaPods:

`pod 'DebugFrame'`

## Usage
```
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

<img width="436" alt="Screenshot 2023-04-06 at 03 06 00" src="https://user-images.githubusercontent.com/43936569/230239666-4d91d59b-84a9-4a49-9db4-e2f5d8168470.png">
