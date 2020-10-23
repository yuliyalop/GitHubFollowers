//
//  User.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 10/20/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
