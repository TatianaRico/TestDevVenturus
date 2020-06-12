//
//  DetailViewController.swift
//  TestDevVenturus
//
//  Created by Tatiana Rico on 12/06/20.
//  Copyright © 2020 Tatiana Rico. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var imageDetailView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: - Properties
    var model: DataCat?
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDetail()
    }
    
    // MARK: IBActions
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: Methods
    func configureDetail() {
        let urlImage =  URL(string: model?.images?.first?.link ?? "")
        let placeholder = UIImage(named: "placeholder")
        
        titleLabel.text = model?.title
        imageDetailView.sd_setImage(with: urlImage, placeholderImage: placeholder)
    }
}

