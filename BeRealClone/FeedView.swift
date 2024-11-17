import SwiftUI
import ParseSwift

struct FeedView: View {
    @State private var posts: [Post] = []

    var body: some View {
        List(posts, id: \.objectId) { post in
            VStack {
                if let imageFile = post.image,
                   let imageData = try? Data(contentsOf: imageFile.url!),
                   let image = UIImage(data: imageData) {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                }
                Text(post.caption ?? "")
                    .font(.headline)
            }
        }
        .onAppear(perform: loadPosts)
    }

    func loadPosts() {
        let query = Post.query()
        query.order([.descending("createdAt")])
        query.limit(10)
        query.find { result in
            switch result {
            case .success(let fetchedPosts):
                posts = fetchedPosts
            case .failure(let error):
                print("Error fetching posts: \(error.localizedDescription)")
            }
        }
    }
}

