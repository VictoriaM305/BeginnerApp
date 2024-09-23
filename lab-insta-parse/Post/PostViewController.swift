//
//  PostViewController.swift
//  lab-insta-parse
//
//  Created by Victoria Mckinnie on 09/20/24
//

@IBAction func onShareTapped(_ sender: Any) {
    guard let image = pickedImage,
          let imageData = image.jpegData(compressionQuality: 0.1) else {
        return
    }

    let imageFile = ParseFile(name: "image.jpg", data: imageData)

    var post = Post()
    post.imageFile = imageFile
    post.caption = captionTextField.text
    post.user = User.current

    post.save { [weak self] result in
        DispatchQueue.main.async {
            switch result {
            case .success(let post):
                print("✅ Post Saved! \(post)")
                self?.navigationController?.popViewController(animated: true)
            case .failure(let error):
                self?.showAlert(description: error.localizedDescription)
            }
        }
    }
}
