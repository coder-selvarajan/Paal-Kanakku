//
//  Home.swift
//  Paal Kanakku
//
//  Created by Selvarajan on 30/06/21.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            
            Color.blue.opacity(0.65).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
            
                VStack(spacing: 20){
                    Text("PAAL KANAKKU").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    Text("Track your daily goods").font(.subheadline)
                    Spacer()
                    
                    VStack {
                        Button(action: {}, label: {
                            Text("Start").font(.title).foregroundColor(.white)
                        })
                    }
                }
                Spacer()
            }
            
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
