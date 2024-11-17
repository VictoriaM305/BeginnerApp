import SwiftUI
import ParseSwift

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @Binding var isLoggedIn: Bool
    @State private var loginError: String?

    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Log In") {
                User.login(username: username, password: password) { result in
                    switch result {
                    case .success:
                        isLoggedIn = true
                        print("User logged in successfully!")
                    case .failure(let error):
                        loginError = error.localizedDescription
                    }
                }
            }
            .padding()

            if let error = loginError {
                Text("Login Error: \(error)")
                    .foregroundColor(.red)
            }
        }
        .navigationTitle("Log In")
    }
}

