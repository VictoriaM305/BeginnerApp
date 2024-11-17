import SwiftUI
import ParseSwift

@main
struct BeRealCloneApp: App {
    init() {
        // Initialize Parse with your credentials
        ParseSwift.initialize(
            applicationId: "0vNy1CLjWiT2V9d7Vck0DUAR3VWMTf4QqRoTOLaI",
            clientKey: "pVUGnysGotZwsc1AGllHTTPoYZkYiMcvQXIt0hiB",
            serverURL: URL(string: "https://parseapi.back4app.com")!
        )
    }

    var body: some Scene {
        WindowGroup {
            ContentView() // Main view
        }
    }
}

