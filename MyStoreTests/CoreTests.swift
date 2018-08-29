//
//  CoreTests.swift
//  MyStoreTests
//
//  Created by Daniel Kiss on 2018. 08. 29..
//  Copyright © 2018. Daniel Kiss. All rights reserved.
//

import XCTest
import Swinject
@testable import MyStore

class CoreTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testDIManager() {

        let shared = DIManager.shared

        // DIManager singleton object must not be nil
        XCTAssertNotNil(shared)

        // DIManager container object must not be nil
        XCTAssertNotNil(shared.container)

    }

    // MARK: - DI Resolve

    func testResolveWindow() {
        let window = DIManager.shared.container.resolve(UIWindow.self)!
        XCTAssertNotNil( window )
    }

}
