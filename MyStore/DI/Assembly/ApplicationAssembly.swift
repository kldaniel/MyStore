//
//  ApplicationAssembly.swift
//  MyStore
//
//  Created by Daniel Kiss on 2018. 08. 29..
//  Copyright © 2018. Daniel Kiss. All rights reserved.
//

import Foundation
import UIKit

import Swinject

final class ApplicationAssembly: Assembly {

    init(container: Container) {
        assemble(container: container)
    }

    func assemble(container: Container) {
        assembleWindow(container: container)
        assembleStoryboards(container: container)
    }

}

extension ApplicationAssembly {

    private func assembleWindow(container: Container) {

        container.register(UIWindow.self) { (_) -> UIWindow in
            let window = UIWindow(frame: UIScreen.main.bounds)
            return window
        }.inObjectScope(.container)

    }

    private func assembleStoryboards(container: Container) {

        container.register(UIStoryboard.self, name: "Main") { (_) -> UIStoryboard in
            return UIStoryboard(name: "Main", bundle: nil)
        }.inObjectScope(.container)

    }

}
