//
//  ViewController.swift
//  TestDevVenturus
//
//  Created by Tatiana Rico on 10/06/20.
//  Copyright © 2020 Tatiana Rico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Properties
    let vm = CatViewModel()
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        colectionViewDelegateDatasource()
        loadRequest()
    }
    
    // MARK: IBActions
    
    // MARK: Methods
    func loadRequest() {
        
        vm.getRequest { [weak self](success) in
            if success {
                self?.collectionView.reloadData()
            }
        }
    }
    
    func colectionViewDelegateDatasource() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return vm.numbeForAt()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? CollectionViewCell else {return UICollectionViewCell()}
        
        cell.configure(data: vm.cellforAt(indexpath: indexPath))
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController {
            
            vc.model = vm.cellforAt(indexpath: indexPath)
            present(vc, animated: true, completion: nil)
        }
    }
}
