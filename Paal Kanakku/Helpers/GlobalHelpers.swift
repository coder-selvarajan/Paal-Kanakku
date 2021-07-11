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
let isoDate4 = "2021-07-04T01:00:00+0000"
let date4 = dateFormatter.date(from:isoDate4)!
let isoDate5 = "2021-07-05T01:00:00+0000"
let date5 = dateFormatter.date(from:isoDate5)!

let isoDate6 = "2021-07-06T01:00:00+0000"
let date6 = dateFormatter.date(from:isoDate6)!
let isoDate7 = "2021-07-07T01:00:00+0000"
let date7 = dateFormatter.date(from:isoDate7)!
let isoDate8 = "2021-07-08T01:00:00+0000"
let date8 = dateFormatter.date(from:isoDate8)!
let isoDate9 = "2021-07-09T01:00:00+0000"
let date9 = dateFormatter.date(from:isoDate9)!
let isoDate10 = "2021-07-10T01:00:00+0000"
let date10 = dateFormatter.date(from:isoDate10)!

let isoDate15 = "2021-07-15T01:00:00+0000"
let date15 = dateFormatter.date(from:isoDate15)!
let isoDate16 = "2021-07-16T01:00:00+0000"
let date16 = dateFormatter.date(from:isoDate16)!
let isoDate17 = "2021-07-17T01:00:00+0000"
let date17 = dateFormatter.date(from:isoDate17)!
let isoDate18 = "2021-07-18T01:00:00+0000"
let date18 = dateFormatter.date(from:isoDate18)!
let isoDate19 = "2021-07-19T01:00:00+0000"
let date19 = dateFormatter.date(from:isoDate19)!

let isoDate25 = "2021-07-25T01:00:00+0000"
let date25 = dateFormatter.date(from:isoDate25)!
let isoDate26 = "2021-07-26T01:00:00+0000"
let date26 = dateFormatter.date(from:isoDate26)!
let isoDate27 = "2021-07-27T01:00:00+0000"
let date27 = dateFormatter.date(from:isoDate27)!
let isoDate28 = "2021-07-28T01:00:00+0000"
let date28 = dateFormatter.date(from:isoDate28)!
let isoDate29 = "2021-07-29T01:00:00+0000"
let date29 = dateFormatter.date(from:isoDate29)!


var sampleMonthEntries: [Entry] = [
    Entry(date: date1, item: product1, count: 1),
    Entry(date: date1, item: product2, count: 2),
    Entry(date: date1, item: product3, count: 1),
    Entry(date: date1, item: product4, count: 2),
    Entry(date: date1, item: product5, count: 2),
    
    Entry(date: date2, item: product3, count: 1),
    Entry(date: date2, item: product4, count: 2),
    
    Entry(date: date3, item: product1, count: 1),
    Entry(date: date3, item: product5, count: 2),
    Entry(date: date3, item: product2, count: 2),
    Entry(date: date3, item: product3, count: 2),
    
    Entry(date: date4, item: product2, count: 1),
    Entry(date: date4, item: product4, count: 2),
    Entry(date: date4, item: product5, count: 2),
    
    Entry(date: date5, item: product4, count: 2),
    
    
    Entry(date: date7, item: product5, count: 1),
    Entry(date: date7, item: product4, count: 2),
    Entry(date: date7, item: product2, count: 1),
    Entry(date: date7, item: product1, count: 2),
    
    Entry(date: date8, item: product3, count: 1),
    Entry(date: date8, item: product4, count: 2),
    
    Entry(date: date10, item: product1, count: 1),
    Entry(date: date10, item: product5, count: 2),
    Entry(date: date10, item: product2, count: 2),
    Entry(date: date10, item: product3, count: 2),
    
   
    Entry(date: date15, item: product3, count: 1),
    Entry(date: date15, item: product4, count: 2),
    
    Entry(date: date17, item: product1, count: 1),
    Entry(date: date17, item: product4, count: 2),
    Entry(date: date17, item: product2, count: 2),
    Entry(date: date17, item: product3, count: 2),
    
    Entry(date: date18, item: product2, count: 1),
    
    Entry(date: date19, item: product4, count: 2),
    Entry(date: date19, item: product3, count: 2),
    Entry(date: date19, item: product1, count: 2),
    
    
    Entry(date: date25, item: product3, count: 2),
    Entry(date: date25, item: product3, count: 1),
    
    Entry(date: date26, item: product4, count: 2),
    
    Entry(date: date27, item: product1, count: 1),
    
    Entry(date: date28, item: product4, count: 2),
    Entry(date: date28, item: product2, count: 2),
    Entry(date: date28, item: product3, count: 2),
    Entry(date: date28, item: product1, count: 2),
    
    Entry(date: date29, item: product4, count: 2),
    Entry(date: date29, item: product3, count: 2),
]
