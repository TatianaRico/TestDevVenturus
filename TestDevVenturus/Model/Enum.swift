//
//  Enum.swift
//  TestDevVenturus
//
//  Created by Tatiana Rico on 12/06/20.
//  Copyright © 2020 Tatiana Rico. All rights reserved.
//

import Foundation

enum TypeEnum: String, Codable {
    case imageGIF = "image/gif"
    case imageJPEG = "image/jpeg"
    case imagePNG = "image/png"
    case videoMp4 = "video/mp4"
}

enum Layout: String, Codable {
    case blog = "blog"
}

enum Privacy: String, Codable {
    case hidden = "hidden"
}

enum Section: String, Codable {
    case cats = "cats"
    case empty = ""
}

enum Topic: String, Codable {
    case noTopic = "No Topic"
}

enum SafeFlag: String, Codable {
    case album = "album"
    case gallery = "gallery"
    case inGallery = "in_gallery"
    case onsfwModSafe = "onsfw_mod_safe"
    case pageLoad = "page_load"
    case sixthModSafe = "sixth_mod_safe"
}

enum Status: String, Codable {
    case completed = "completed"
}
