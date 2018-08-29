//
//  ControllerAssembly.swift
//  MyStore
//
//  Created by Daniel Kiss on 2018. 08. 29..
//  Copyright © 2018. Daniel Kiss. All rights reserved.
//

import Foundation
import UIKit

import Swinject

final class ControllerAssembly: Assembly {

    init(container: Container) {
        assemble(container: container)
    }

    func assemble(container: Container) {

        container.register(StartController.self) { (resolver) -> StartController in
            let storyboard = resolver.resolve(UIStoryboard.self, name: "Main")!
            let controller = storyboard.instantiateInitialViewController() as! StartController
            return controller
        }.inObjectScope(.container)

    }

}
