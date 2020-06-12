//
//  DataCat.swift
//  TestDevVenturus
//
//  Created by Tatiana Rico on 12/06/20.
//  Copyright © 2020 Tatiana Rico. All rights reserved.
//

import Foundation

// MARK: - Datum
struct DataCat: Codable {
    let id, title: String?
    let datetime: Int?
    let cover: String?
    let coverWidth, coverHeight: Int?
    let accountURL: String?
    let accountID: Int?
    let privacy: Privacy?
    let layout: Layout?
    let views: Int?
    let link: String?
    let ups, downs, points, score: Int?
    let isAlbum: Bool?
    let favorite, nsfw: Bool?
    let section: Section?
    let commentCount, favoriteCount: Int?
    let topic: Topic?
    let topicID, imagesCount: Int?
    let inGallery, isAd: Bool?
    let tags: [Tag]?
    let adType: Int?
    let adURL: String?
    let inMostViral, includeAlbumAds: Bool?
    let images: [Image]?
    let adConfig: AdConfig?

    enum CodingKeys: String, CodingKey {
        case id, title
        case datetime, cover
        case coverWidth = "cover_width"
        case coverHeight = "cover_height"
        case accountURL = "account_url"
        case accountID = "account_id"
        case privacy, layout, views, link, ups, downs, points, score
        case isAlbum = "is_album"
        case favorite, nsfw, section
        case commentCount = "comment_count"
        case favoriteCount = "favorite_count"
        case topic
        case topicID = "topic_id"
        case imagesCount = "images_count"
        case inGallery = "in_gallery"
        case isAd = "is_ad"
        case tags
        case adType = "ad_type"
        case adURL = "ad_url"
        case inMostViral = "in_most_viral"
        case includeAlbumAds = "include_album_ads"
        case images
        case adConfig = "ad_config"
    }
}
