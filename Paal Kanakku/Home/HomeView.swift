//
//  Home.swift
//  Paal Kanakku
//
//  Created by Selvarajan on 02/07/21.
//

import SwiftUI

private var symbols = ["keyboard", "hifispeaker.fill", "printer.fill", "tv.fill", "desktopcomputer", "headphones", "tv.music.note", "mic", "plus.bubble", "video"]

private var colors: [Color] = [.yellow, .red, .green]

private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

struct HomeView: View {
    @State private var currentMonth: Date = Date()
    @State private var currentMonthName: String = ""
    @State private var daysinMonth: Int = 0
    @State private var entries: [Entry] = []
    @State private var noofSquares: Int = 42
    @State private var firstDay : Int = 0
    var vm = HomeVM()
    
    init() {
        let year = Calendar.current.component(.year, from: currentMonth)
        let month = Calendar.current.component(.month, from: currentMonth)
        
        //set first day of current month
        let dateString = "01/\(month)/\(year)"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yy"
        let firstMonthDate = dateFormatter.date(from: dateString)!
        _currentMonth = State(initialValue: firstMonthDate)
        
        _daysinMonth = State(initialValue: vm.getDaysCountForMonth(yr: year, mon: month))
        _firstDay = State(initialValue: Calendar.current.component(.weekday, from: firstMonthDate))
        
        if ((firstDay + daysinMonth) <= 36) {
            _noofSquares = State(initialValue: 35)
        }
        
        dateFormatter.dateFormat = "LLLL"
        _currentMonthName = State(initialValue: dateFormatter.string(from: currentMonth))
    }
    
    func setupMonth() {
        let year = Calendar.current.component(.year, from: currentMonth)
        let month = Calendar.current.component(.month, from: currentMonth)
        
        //set first day of current month
        let dateString = "01/\(month)/\(year)"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yy"
        let firstMonthDate = dateFormatter.date(from: dateString)!
        self.currentMonth = firstMonthDate
        
//        self.entries = vm.getEntries(forMonth: "June")
        self.daysinMonth = vm.getDaysCountForMonth(yr: year, mon: month)
        self.firstDay = Calendar.current.component(.weekday, from: firstMonthDate)
        
        if ((firstDay + daysinMonth) <= 36) {
            self.noofSquares = 35
        }
        else {
            self.noofSquares = 42
        }
        
        dateFormatter.dateFormat = "LLLL"
        self.currentMonthName = dateFormatter.string(from: currentMonth)
    }
    
    var body: some View {
        
        VStack {
            Text("PAAL KANAKKU").font(.title)
            Text("").font(.title)
            
            HStack {
                Button(action: {
                    var dateComponent = DateComponents()
                    dateComponent.month = -1
                    let futureDate = Calendar.current.date(byAdding: dateComponent, to: self.currentMonth)
                    self.currentMonth = futureDate!
                    setupMonth()
                }, label: {
                    Text("<<")
                })
                Text("\(self.currentMonthName) - \(Calendar.current.component(.year, from: self.currentMonth))")
                
                Button(action: {
                    var dateComponent = DateComponents()
                    dateComponent.month = 1
                    let futureDate = Calendar.current.date(byAdding: dateComponent, to: self.currentMonth)
                    self.currentMonth = futureDate!
                    setupMonth()
                }, label: {
                    Text(">>")
                })
            }
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 2) {
                    ForEach(1...self.noofSquares, id: \.self) { index in
                        Button(action: {
//                            print(self.entries)
                        }, label: {
                            
                            VStack {
                                if ((index - self.firstDay) < 0 || (index - self.firstDay) >= self.daysinMonth ) {
//                                    print("firstDay \(self.firstDay), daysinMonth \(self.daysinMonth)")
                                    HStack {
                                        Text("...")
                                            .foregroundColor(.orange.opacity(0.85))
                                        Spacer()
                                    }
                                }
                                else {
                                    
                                    HStack {
                                        Text("\(index - self.firstDay + 1)")
                                            .foregroundColor(.orange.opacity(0.85))
                                        Spacer()
                                    }
                                    Spacer()
                                    
                                    VStack(alignment: .trailing) {
                                        HStack(spacing: 0) {
                                            Spacer()
                                            Image(systemName: symbols[index % symbols.count])
                                                .font(.system(size: 7))
                                        }.padding(.horizontal, 2)
                                        
                                        Spacer()
                                        HStack(spacing: 3) {
                                            Spacer()
                                            Image(systemName: symbols[index % symbols.count])
                                                .font(.system(size: 7))
                                            Image(systemName: symbols[index % symbols.count])
                                                .font(.system(size: 7))
                                            Image(systemName: symbols[index % symbols.count])
                                                .font(.system(size: 7))
                                        }
                                        .padding(.horizontal, 2)
                                    }
                                }
                            }
                            .foregroundColor(.black.opacity(0.6))
                            .frame(width: 40, height: 50)
                            .padding(5)
                            
                        })
                        
                        .background(Color.white.opacity(1))
                        .border(Color.black.opacity(0.2))
                    }
                }
                //                .background(Color.black.opacity(0.5))
                //                .border(Color.black.opacity(0.5))
                .padding(16)
                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
