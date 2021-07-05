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
    
    func setupEntries(){
        monthEntries["June"] = sampleMonthEntries1
        monthEntries["July"] = sampleMonthEntries2
        
//        let dateFormatter = ISO8601DateFormatter()
//        let isoDate1 = "2021-05-01T01:00:00+0000"
//        firstMonthDate = dateFormatter.date(from:isoDate1)!
//        firstday = Calendar.current.component(.weekday, from: firstMonthDate)
        
    }
}
