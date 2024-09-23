//
//  User.swift
//  lab-insta-parse
//
//  Created by Victoria Mckinnie on 09/20/24.
//

import ParseSwift

struct User: ParseUser {
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    var username: String?
    var email: String?
    var emailVerified: Bool?
    var password: String?
    var authData: [String: [String: String]]?
}
