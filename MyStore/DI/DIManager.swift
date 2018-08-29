//
//  DIManager.swift
//  MyStore
//
//  Created by Daniel Kiss on 2018. 08. 29..
//  Copyright © 2018. Daniel Kiss. All rights reserved.
//

import Foundation

import Swinject

final class DIManager {

    static let shared: DIManager = DIManager()

    let container: Container = Container()

    private var assembler: Assembler

    init() {

        self.assembler = Assembler(container: container)

        let appAssembly = ApplicationAssembly(container: container)
        let ctrlAssembly = ControllerAssembly(container: container)

        assembler.apply(assemblies: [
            appAssembly,
            ctrlAssembly
        ])

    }

}
