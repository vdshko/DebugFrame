//
//  ExampleTests.swift
//  ExampleTests
//
//  Created by Vladyslav Shkodych on 19.12.2022.
//

import XCTest
import SwiftUI
import SnapshotTesting
@testable import Example

final class ContentViewTests: XCTestCase {
    
    func test_body_loaded() {
        let view = ContentView_Previews.previews
        
        // iPhone 14 Pro
        assertSnapshot(matching: view, as: .main)
    }
}
