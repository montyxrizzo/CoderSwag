//
//  CategoryCell.swift
//  coderswag
//
//  Created by ma-RodgersM on 7/12/18.
//  Copyright © 2018 ma-RodgersM. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var  categoryImage:UIImageView!
    @IBOutlet weak var categoryTitle:UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named:  category.imageName)
        categoryTitle.text = category.title
    }

 

}
