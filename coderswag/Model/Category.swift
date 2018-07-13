//
//  Category.swift
//  coderswag
//
//  Created by ma-RodgersM on 7/12/18.
//  Copyright © 2018 ma-RodgersM. All rights reserved.
//

import UIKit

struct Category {
    
    private(set) public var title: String!
    private(set) public var imageName: String!
    init(title:String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
}
