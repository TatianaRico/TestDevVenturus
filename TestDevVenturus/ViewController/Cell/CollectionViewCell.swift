//
//  CollectionViewCell.swift
//  TestDevVenturus
//
//  Created by Tatiana Rico on 11/06/20.
//  Copyright © 2020 Tatiana Rico. All rights reserved.
//

import UIKit
import SDWebImage

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func configure(data: DataCat) {
        
        let urlImage =  URL(string: data.images?.first?.link ?? "")
        let placeholder = UIImage(named: "placeholder")
        
        nameLabel.text = data.title
        imageView.sd_setImage(with: urlImage, placeholderImage: placeholder)
    }
}
