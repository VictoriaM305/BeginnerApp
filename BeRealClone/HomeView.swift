import SwiftUI
import ParseSwift

struct HomeView: View {
    @Binding var isLoggedIn: Bool

    var body: some View {
        VStack {
            Text("Welcome to BeRealClone!")
                .font(.title)
                .padding()

            Button("Log Out") {
                User.logout { result in
                    switch result {
                    case .success:
                        isLoggedIn = false
                        print("User logged out successfully!")
                    case .failure(let error):
                        print("Error logging out: \(error)")
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Home")
    }
}

