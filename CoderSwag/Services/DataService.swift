//
//  DataService.swift
//  CoderSwag
//
//  Created by Sebastian Crossa on 7/29/17.
//  Copyright © 2017 CROSS-A. All rights reserved.
//

import Foundation

class DataService {
    
    // Created a singleton
    // static = Only ever one copy in memory
    static let instance = DataService()
    
    // App data (we are simulating that we are using a server for the data)
    // categories is an array of type Category
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png")
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        
    }
    
}
