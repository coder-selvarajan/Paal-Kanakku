//
//  GlobalHelpers.swift
//  Paal Kanakku
//
//  Created by Selvarajan on 03/07/21.
//

import Foundation


var product1: Product = Product(id: UUID().uuidString,
                                name: "Milk",
                                description: "1/2 litre",
                                price: "30",
                                imageIcon: "mic",
                                smallImageIcon: "milk-small", smallImageIconMultiple: "milk-small-multiple",
                                mediumImageIcon: "milk-medium")

var product2: Product = Product(id: UUID().uuidString,
                                name: "Curd",
                                description: "1/2 litre",
                                price: "40",
                                imageIcon: "headphones",
                                smallImageIcon: "curd-small", smallImageIconMultiple: "curd-small-multiple",
                                mediumImageIcon: "curd-medium")

var product3: Product = Product(id: UUID().uuidString,
                                name: "Paper",
                                description: "Hindu Paper - 1",
                                price: "10",
                                imageIcon: "video",
                                smallImageIcon: "paper-small", smallImageIconMultiple: "paper-small-multiple",
                                mediumImageIcon: "paper-medium")

var product4: Product = Product(id: UUID().uuidString,
                                name: "Egg",
                                description: "Pack of 6",
                                price: "120",
                                imageIcon: "desktopcomputer",
                                smallImageIcon: "egg-small", smallImageIconMultiple: "egg-small-multiple",
                                mediumImageIcon: "egg-medium")

var product5: Product = Product(id: UUID().uuidString,
                                name: "Oil",
                                description: "1/2 litre",
                                price: "180",
                                imageIcon: "keyboard",
                                smallImageIcon: "oil-small", smallImageIconMultiple: "oil-small-multiple",
                                mediumImageIcon: "oil-medium")




let dateFormatter = ISO8601DateFormatter()

let isoDate1 = "2021-07-01T01:00:00+0000"
let date1 = dateFormatter.date(from:isoDate1)!
let isoDate2 = "2021-07-02T01:00:00+0000"
let date2 = dateFormatter.date(from:isoDate2)!
let isoDate3 = "2021-07-03T01:00:00+0000"
let date3 = dateFormatter.date(from:isoDate3)!

let isoDate11 = "2021-06-20T01:00:00+0000"
let date11 = dateFormatter.date(from:isoDate11)!
let isoDate12 = "2021-06-25T01:00:00+0000"
let date12 = dateFormatter.date(from:isoDate12)!
let isoDate13 = "2021-06-30T01:00:00+0000"
let date13 = dateFormatter.date(from:isoDate13)!



var sampleMonthEntries1: [Entry] = [
    Entry(date: date1, item: product1, count: 1),
    Entry(date: date1, item: product2, count: 2),
    Entry(date: date1, item: product3, count: 1),
    
    Entry(date: date2, item: product3, count: 1),
    Entry(date: date2, item: product4, count: 2),
    
    Entry(date: date3, item: product1, count: 1),
    Entry(date: date3, item: product5, count: 2),
]

var sampleMonthEntries2: [Entry] = [
    Entry(date: date11, item: product2, count: 1),
    Entry(date: date11, item: product4, count: 2),
    
    Entry(date: date12, item: product1, count: 1),
    Entry(date: date12, item: product3, count: 2),
    
    Entry(date: date13, item: product1, count: 1),
    Entry(date: date13, item: product2, count: 2),
    Entry(date: date13, item: product5, count: 2),
]
