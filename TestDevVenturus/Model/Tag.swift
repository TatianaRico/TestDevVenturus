//
//  Tag.swift
//  TestDevVenturus
//
//  Created by Tatiana Rico on 12/06/20.
//  Copyright © 2020 Tatiana Rico. All rights reserved.
//

import Foundation
// MARK: - Tag
struct Tag: Codable {
    let name, displayName: String?
    let followers, totalItems: Int?
    let following, isWhitelisted: Bool?
    let backgroundHash: String?
    let accent: String?
    let backgroundIsAnimated, thumbnailIsAnimated, isPromoted: Bool?
    let tagDescription: String?

    enum CodingKeys: String, CodingKey {
        case name
        case displayName = "display_name"
        case followers
        case totalItems = "total_items"
        case following
        case isWhitelisted = "is_whitelisted"
        case backgroundHash = "background_hash"
        case accent
        case backgroundIsAnimated = "background_is_animated"
        case thumbnailIsAnimated = "thumbnail_is_animated"
        case isPromoted = "is_promoted"
        case tagDescription = "description"
    }
}
