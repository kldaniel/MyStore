//
//  DITests.swift
//  MyStoreTests
//
//  Created by Daniel Kiss on 2018. 08. 29..
//  Copyright © 2018. Daniel Kiss. All rights reserved.
//

import XCTest
import Swinject
@testable import MyStore

class DITests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testResolveStartController() {
        let resolved = DIManager.shared.container.resolve(StartController.self)!
        XCTAssertNotNil( resolved )
    }

}
