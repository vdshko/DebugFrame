//
//  DebugFrame.swift
//  DebugFrame
//
//  Created by Vladyslav Shkodych on 19.12.2022.
//

/*
 DebugFrame is an overlay that can be appended to your view, for debugging its origin and size.
 
 DebugFrame will not be compiled in the release build, so you may not worry if you forget to remove it from some of your view.
 To keep your code as clean as possible, it's probably a good idea to add a SwiftLint or any other linting rule to make an Xcode warning for this.
 
 There are two methods for modifying your view with debugFrame overlay.
 The two methods need only for easier use of the Xcode autocomplete.
 */

import Foundation
import SwiftUI

private struct DebugFrame: ViewModifier {
    
    let color: Color
    let outputs: [DebugFrameOutput]
    
    func body(content: Content) -> some View {
        #if !DEBUG
            return content
        #endif
        
        content
            .overlay(
                GeometryReader { geometry in
                    ZStack(alignment: .bottom) {
                        Rectangle()
                            .strokeBorder(style: StrokeStyle(lineWidth: 1, dash: [5]))
                            .foregroundColor(color)
                        Text(defineOutput(with: geometry))
                            .foregroundColor(color)
                            .font(.caption2)
                    }
                }
            )
    }
    
    private func defineOutput(with geometry: GeometryProxy) -> String {
        let globalOrigin: CGPoint = geometry.frame(in: .global).origin
        let originX: String = "x: \(rounded(globalOrigin.x))"
        let originY: String = "y: \(rounded(globalOrigin.y))"
        let width: String = "w: \(rounded(geometry.size.width))"
        let height: String = "h: \(rounded(geometry.size.height))"
        return String(
            outputs.reduce(into: String()) {
                switch $1 {
                case .all: $0 += "(\(originX), \(originY)) | (\(width), \(height))"
                case .origin: $0 += "(\(originX), \(originY))"
                case .size: $0 += "(\(width), \(height))"
                case .originX: $0 += originX
                case .originY: $0 += originY
                case .width: $0 += width
                case .height: $0 += height
                }
                $0 += " | "
            }.dropLast(3)
        )
    }
    
    private func rounded(_ value: CGFloat) -> Float {
        return Float(round(100 * value) / 100)
    }
}

public enum DebugFrameOutput {
    
    case all
    case origin, size
    case originX, originY
    case width, height
}

public extension View {
    
    /// Applies an overlay to your view and returns a new view. The overlay contains a border of your view, its origin, and size.
    /// - Parameter color: Default color for the border of the overlay and outputs.
    /// - Returns: View that uses the debug overlay.
    func debugFrame(color: Color = Color.red) -> some View {
        return modifier(
            DebugFrame(
                color: color,
                outputs: [DebugFrameOutput.all]
            )
        )
    }
    
    /// Applies an overlay to your view and returns a new view. The overlay contains a border of your view, its origin, and size.
    /// - Parameters:
    ///   - color: Default color for the border of the overlay and outputs.
    ///   - outputs: Default outputs of the overlay such as origin and size.
    /// - Returns: View that uses the debug overlay.
    func debugFrame(color: Color = Color.red, _ outputs: DebugFrameOutput...) -> some View {
        return modifier(
            DebugFrame(
                color: color,
                outputs: outputs.isEmpty ? [DebugFrameOutput.all] : outputs
            )
        )
    }
}
