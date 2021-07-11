//
//  HomeVM.swift
//  Paal Kanakku
//
//  Created by Selvarajan on 04/07/21.
//

import Foundation

class HomeVM: ObservableObject
{
    @Published var monthEntries : [String: [Entry]] = [:]
    var firstMonthDate: Date = Date()
    var firstday: Int = 0
    
    func getEntries(forMonth month: String) -> [Entry] {
        return monthEntries[month] ?? []
    }
    
    init(){
        setupEntries()
    }
    
    func getDaysCountForMonth(yr: Int, mon: Int) -> Int {
        let dateComponents = DateComponents(year: yr, month: mon)
        let calendar = Calendar.current
        let date = calendar.date(from: dateComponents)!

        let range = calendar.range(of: .day, in: .month, for: date)!
        return range.count
    }
    
    func getProductsCount(day: Int, currentMonth: Date) -> Int {
        return 2
    }
    
    func getDayEntries(day: Int, currentMonth: Date) -> [String: [String]] {
        var dayEntries: [Entry] = []
        
        sampleMonthEntries.forEach { entry in
            let entryDay = Calendar.current.component(.day, from: entry.date)
            
            if (entryDay == day) {
                dayEntries.append(entry)
            }
        }
        
        if dayEntries.count >= 4 {
            return ["row1": [dayEntries[3].item.imageIcon ],
                    "row2": [dayEntries[0].item.imageIcon, dayEntries[1].item.imageIcon, dayEntries[2].item.imageIcon]]
        }
        else if dayEntries.count > 0 {
            return ["row2": dayEntries.map({ entry in
                return entry.item.imageIcon
            })]
        }
        
        return ["": []]
        
    }
    
    func getProducts(day: Int, currentMonth: Date) -> [String: [String]] {
        let rnd: Int = Int.random(in: 1..<5)
        
        if (rnd == 4) {
            return ["row1": ["headphones"],
                    "row2": ["keyboard", "video", "mic"].shuffled()]
        }
        else {
            return ["row2": ["keyboard", "video"].shuffled()]
        }
    }
    
    func setupEntries(){
        monthEntries["June"] = sampleMonthEntries
        
//        let dateFormatter = ISO8601DateFormatter()
//        let isoDate1 = "2021-05-01T01:00:00+0000"
//        firstMonthDate = dateFormatter.date(from:isoDate1)!
//        firstday = Calendar.current.component(.weekday, from: firstMonthDate)
        
    }
}
