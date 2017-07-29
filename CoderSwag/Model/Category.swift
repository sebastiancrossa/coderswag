//
//  Category.swift
//  CoderSwag
//
//  Created by Sebastian Crossa on 7/29/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

import Foundation

struct Category {
    
    // private(set) = we can no longer set these variables on the outside, only set them
    // private(set) public = private for setting, public for getting/recieving
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
    
}
