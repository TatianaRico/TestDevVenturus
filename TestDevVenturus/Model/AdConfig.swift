//
//  AdConfig.swift
//  TestDevVenturus
//
//  Created by Tatiana Rico on 12/06/20.
//  Copyright © 2020 Tatiana Rico. All rights reserved.
//

import Foundation

// MARK: - AdConfig
struct AdConfig: Codable {
    let safeFlags: [SafeFlag]?
    let unsafeFlags: [String]?
    let showsAds: Bool?
}
