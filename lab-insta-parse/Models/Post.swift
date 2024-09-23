//
//  Post.swift
//  lab-insta-parse
//
//  Created by  Victoria Mckinnie on 09/21/24.
//

import ParseSwift

struct Post: ParseObject {
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    var caption: String?
    var user: User?
    var imageFile: ParseFile?
}

