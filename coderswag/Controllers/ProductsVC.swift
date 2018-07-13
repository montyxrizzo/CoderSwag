//
//  ProductsVC.swift
//  coderswag
//
//  Created by ma-RodgersM on 7/12/18.
//  Copyright © 2018 ma-RodgersM. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    private(set) public var products = [Product]()
    
    @IBOutlet weak var productsCollection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self

    }

    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
}
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
            return ProductCell()
            

    }
    
}
