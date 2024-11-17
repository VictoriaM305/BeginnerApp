import SwiftUI
import ParseSwift

struct ContentView: View {
    @State private var isLoggedIn = User.current != nil

    var body: some View {
        NavigationView {
            if isLoggedIn {
                HomeView(isLoggedIn: $isLoggedIn)
            } else {
                LoginView(isLoggedIn: $isLoggedIn)
            }
        }
        .onAppear {
            isLoggedIn = User.current != nil
        }
    }
}

