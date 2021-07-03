//
//  Item.swift
//  Paal Kanakku
//
//  Created by Selvarajan on 03/07/21.
//

import Foundation

struct Product: Identifiable {
    
    var id: String
    var name: String
    var description: String
    var price: String
    
    var smallImageIcon: String
    var mediumImageIcon: String
    
}

struct Entry {
    var date: Date
    var item: Product
    var count: Int
}
