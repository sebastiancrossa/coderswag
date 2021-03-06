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
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Gray", price: "$35", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$30", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$25", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$25", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$15", imageName: "shirt03.png"),
        Product(title: "Hustle Deelgate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$15", imageName: "shirt05.png")
    ]
    
    // We have no digital products, so it's empty
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) ->[Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
