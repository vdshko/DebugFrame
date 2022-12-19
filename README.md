# DebugFrame

DebugFrame is a modifier for SwiftUI view, which is very easy to use and add to any view you want. This modifier adds the overlay with stroke border and CGFrame parameters on your view. The modifier is so useful during making UI on your project using SwiftUI of course.

## Integration (Cocoapods)

`pod 'DebugFrame'`

## Usage
```
VStack {
  title
  Spacer()
  rectangles
    .debugFrame()
  Spacer()
}
.debugFrame()
```

<img width="436" alt="Screenshot 2022-12-19 at 19 08 31" src="https://user-images.githubusercontent.com/43936569/208482070-81ababbe-250f-455a-9e1e-b0444aa2c86c.png">
