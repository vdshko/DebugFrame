//
//  ViewImageConfig.swift
//  ExampleTests
//
//  Created by Vlad Shkodich on 19.12.2022.
//

import Foundation
import SwiftUI
import UIKit
import SnapshotTesting

extension Snapshotting where Value: SwiftUI.View, Format == UIImage {
    
    public static var main: Snapshotting {
        return .main(precision: 0.99)
    }
    
    public static var mainWaiting: Snapshotting {
        return .wait(for: 0.05, on: .main)
    }

    public static func mainWaiting(for duration: TimeInterval = 0.05, precision: Float) -> Snapshotting {
        return .wait(for: duration, on: .main(precision: precision))
    }
    
    public static func main(precision: Float) -> Snapshotting {
        return .image(precision: precision, layout: .device(config: .iPhone14Pro))
    }
}

extension ViewImageConfig {
    
    public static let iPhone14Pro = ViewImageConfig.iPhone14Pro(.portrait)

    public static func iPhone14Pro(_ orientation: Orientation) -> ViewImageConfig {
      let safeArea: UIEdgeInsets
      let size: CGSize
      switch orientation {
      case .landscape:
        safeArea = .init(top: 0, left: 59, bottom: 21, right: 59)
        size = .init(width: 852, height: 393)
      case .portrait:
        safeArea = .init(top: 59, left: 0, bottom: 34, right: 0)
        size = .init(width: 393, height: 852)
      }
      return .init(safeArea: safeArea, size: size, traits: .iPhoneX(orientation))
    }
}
