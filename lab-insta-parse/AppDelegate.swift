//
//  AppDelegate.swift
//  lab-insta-parse
//
//  Created by Victoria Mckinnie on 09/21/24.
//

import ParseSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        ParseSwift.initialize(applicationId: "0vNy1CLjWIT2V9d7Vck0DUAR3VWMTf4QqRoTOLaI",
                              clientKey: "pVUgNysGotZwsd1AGllaHTPoYZkYjMcvQXtlohjB",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)
        return true
    }
}

