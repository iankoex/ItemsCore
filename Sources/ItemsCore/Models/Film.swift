//
//  Flairs.swift
//  ItemsCore
//
//  Created by Ian on 20/01/2023.
//

import Foundation

public struct Film: Codable, Sendable, Hashable, Equatable {
    public var title: String
    public var url: String
    public var seriesID: UUID?

    public init(title: String, url: String, seriesID: UUID? = nil) {
        self.title = title
        self.url = url
        self.seriesID = seriesID
    }
}

extension Film {
    
    public static let placeholder = Film(
        title: "Movie 1",
        url: "https://archive.org/download/vd_20210515_202105/vd.mp4"
    )
}
