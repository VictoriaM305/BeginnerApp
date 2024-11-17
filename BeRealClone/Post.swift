import Foundation
import ParseSwift

struct Post: ParseObject {
    var originalData: Data?
    
    // Required properties for ParseObject
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?

    // Custom properties for the Post model
    var caption: String?
    var image: ParseFile?

    // Default initializer
    init() {}

    // Initializer with parameters
    init(caption: String?, image: ParseFile?) {
        self.caption = caption
        self.image = image
    }
}

