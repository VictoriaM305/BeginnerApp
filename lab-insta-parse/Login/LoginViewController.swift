//
//  LoginViewController.swift
//  lab-insta-parse
//
//  Created by Victoria Mckinnie 09/21/24
//

@IBAction func onLoginTapped(_ sender: Any) {
    guard let username = usernameField.text, let password = passwordField.text else {
        return
    }

    User.login(username: username, password: password) { [weak self] result in
        switch result {
        case .success(let user):
            print("✅ Successfully logged in as user: \(user)")
            NotificationCenter.default.post(name: Notification.Name("login"), object: nil)
        case .failure(let error):
            self?.showAlert(description: error.localizedDescription)
        }
    }
}

