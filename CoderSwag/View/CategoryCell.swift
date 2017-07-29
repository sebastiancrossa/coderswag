//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by Sebastian Crossa on 7/29/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
}
