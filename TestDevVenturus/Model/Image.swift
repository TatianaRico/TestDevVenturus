//
//  Image.swift
//  TestDevVenturus
//
//  Created by Tatiana Rico on 12/06/20.
//  Copyright © 2020 Tatiana Rico. All rights reserved.
//

import Foundation

// MARK: - Image
struct Image: Codable {
    let id: String?
    let imageDescription: String?
    let datetime: Int?
    let type: TypeEnum?
    let animated: Bool?
    let width, height, size, views: Int?
    let bandwidth: Int?
    let favorite: Bool?
    let isAd, inMostViral, hasSound: Bool?
    let adType: Int?
    let adURL, edited: String?
    let inGallery: Bool?
    let link: String?
    let mp4: String?
    let gifv: String?
    let hls: String?
    let mp4Size: Int?
    let looping: Bool?
    let processing: Processing?

    enum CodingKeys: String, CodingKey {
        case id
        case imageDescription = "description"
        case datetime, type, animated, width, height, size, views, bandwidth, favorite
        case isAd = "is_ad"
        case inMostViral = "in_most_viral"
        case hasSound = "has_sound"
        case adType = "ad_type"
        case adURL = "ad_url"
        case edited
        case inGallery = "in_gallery"
        case link
        case mp4, gifv, hls
        case mp4Size = "mp4_size"
        case looping, processing
    }
}
