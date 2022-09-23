//
//  Comments.swift
//  Items
//
//  Created by Ian on 21/07/2021.
//

import Foundation

public struct Comment: Codable, Identifiable, Equatable {
    public var id: UUID
    public var text: String
    public var creator: User
    public var parentItemID: UUID
    public var parentCommentID: UUID?
    public var communityID: UUID
    public var replies: [Comment]
    public var upvotes: Int
    public var downvotes: Int
    public var level: Int
    public var createdOn: Date
    public var lastModifiedOn: Date
    public var isFolded: Bool
    public var hasReplies: Bool
    
    public init(id: UUID, text: String, creator: User, parentItemID: UUID, parentCommentID: UUID? = nil, communityID: UUID, replies: [Comment], upvotes: Int, downvotes: Int, level: Int, createdOn: Date, lastModifiedOn: Date, isFolded: Bool, hasReplies: Bool) {
        self.id = id
        self.text = text
        self.creator = creator
        self.parentItemID = parentItemID
        self.parentCommentID = parentCommentID
        self.communityID = communityID
        self.replies = replies
        self.upvotes = upvotes
        self.downvotes = downvotes
        self.level = level
        self.createdOn = createdOn
        self.lastModifiedOn = lastModifiedOn
        self.isFolded = isFolded
        self.hasReplies = hasReplies
    }
}

extension Comment {
    public struct Create: Codable {
        public var text: String
        public var creatorID: UUID
        public var itemID: UUID
        public var commentID: UUID?
        public var level: Int
        
        public init(text: String, creatorID: UUID, itemID: UUID, commentID: UUID? = nil, level: Int) {
            self.text = text
            self.creatorID = creatorID
            self.itemID = itemID
            self.commentID = commentID
            self.level = level
        }
    }
}

extension Comment {
    public static var placeholder: Comment {
        Comment(
            id: UUID(),
            text: "Placeholder",
            creator: .placeholder,
            parentItemID: UUID(),
            parentCommentID: UUID(),
            communityID: UUID(),
            replies: [],
            upvotes: 0,
            downvotes: 0,
            level: 0,
            createdOn: Date(),
            lastModifiedOn: Date(),
            isFolded: true,
            hasReplies: false
        )
    }
}
