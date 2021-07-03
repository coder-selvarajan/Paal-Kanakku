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

struct Home: View {
    var body: some View {
        
        VStack {
            Text("PAAL KANAKKU").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("").font(.title)
            
            Text("Jun 2020")
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 2) {
                    
                    
                    
                    ForEach((1...42), id: \.self) { index in
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            VStack {
                                HStack {
                                    Text("\(index)")
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
//                                    .background(Color.yellow)
                                    
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
//                                    .background(Color.green)
                                }
                                
                            }
                            .foregroundColor(.black.opacity(0.6))
                            .frame(width: 40, height: 50)
                            .padding(5)
                            
                        })
                        
                        .background(Color.white.opacity(1))
                        .border(Color.black.opacity(0.2))
                        
                                
    //                            Image(systemName: symbols[$0 % symbols.count])
    //                                .font(.system(size: 10))
    //                                .frame(width: 50, height: 50)
    //                                .background(Color.black.opacity(0.05))
    //                                .cornerRadius(10)
                            
                        
                        
                    }
                }
//                .background(Color.black.opacity(0.5))
//                .border(Color.black.opacity(0.5))
                .padding(16)
                
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
