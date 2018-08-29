//
//  AppDelegate.swift
//  MyStore
//
//  Created by Daniel Kiss on 2018. 08. 26..
//  Copyright © 2018. Daniel Kiss. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
    ) -> Bool {

        let window: UIWindow = DIManager.shared.container.resolve(UIWindow.self)!
        let rootController: StartController = DIManager.shared.container.resolve(StartController.self)!
        window.rootViewController = rootController
        window.makeKeyAndVisible()
        self.window = window

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}

}
