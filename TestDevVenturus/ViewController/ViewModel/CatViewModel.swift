//
//  CatViewModel.swift
//  TestDevVenturus
//
//  Created by Tatiana Rico on 11/06/20.
//  Copyright © 2020 Tatiana Rico. All rights reserved.
//

import UIKit

class CatViewModel {
    
    var request = APIRequest()
    var cat: [DataCat]?
    
    func getRequest(completion: @escaping (Bool) -> Void){
        request.loadCats { (model, sucess) in
            if sucess{
                self.cat = model
                completion(true)
            }
        }
    }
    
    func numbeForAt() -> Int {
        return cat?.count ?? 0
    }
    
    func cellforAt(indexpath: IndexPath) -> DataCat {
        return cat?[indexpath.row] ?? DataCat(id: "", title:  "", datetime: 0, cover:  "", coverWidth: 0, coverHeight: 0, accountURL:  "", accountID: 0, privacy: .none, layout: .none, views: 0, link:  "", ups: 0, downs: 0, points: 0, score: 0, isAlbum: true, favorite: true, nsfw: true, section: .none, commentCount: 0, favoriteCount: 0, topic: .none, topicID: 0, imagesCount: 0, inGallery: true, isAd: true, tags: .none, adType: 0, adURL:  "", inMostViral: true, includeAlbumAds: true, images: .none, adConfig: .none)
    }
}
