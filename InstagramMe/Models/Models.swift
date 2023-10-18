//
//  Models.swift
//  InstagramMe
//
//  Created by MacBook Air on 18/10/2023.
//

import Foundation

enum Gender {
    case male, female
}
struct User {
    let username: String
    let bio: String
    let name: (first: String, last: String)
    let birthDate: Date
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
}

struct UserCount {
    let followers: Int
    let following: Int
    let posts: Int
}

public enum UserPostType{
    case photo, video
}
public struct UserPost{
    let identifier: String
    let postType: UserPostType
    let thmbnailImage: URL
    let postURL: URL
    let caption: String?
    let likeCount: [PostLikes]
    let comments: [PostComment]
    let createdDate: Date
    let taggedUsers: [String]
}

struct PostLikes {
    let username: String
    let postIdentifier: String
}
struct CommentLikes {
    let username: String
    let commentIdentifier: String
}

struct PostComment {
    let username: String
    let text: String
    let createdDate: Date
    let likes: [CommentLikes]
}
