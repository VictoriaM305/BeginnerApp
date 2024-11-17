import Foundation
import ParseSwift

struct User: ParseUser {
    var emailVerified: Bool?
    
    var authData: [String : [String : String]?]?
    
    var originalData: Data?
    
    // Required properties for ParseUser
    var objectId: String?
    var username: String?
    var email: String?
    var password: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?

    // Custom properties
    var customField: String?

    init() { }
}

