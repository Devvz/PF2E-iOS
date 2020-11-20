//
//  ContentView.swift
//  PF2E-iOS
//
//  Created by Patrick Michael Kerrigan on 11/19/20.
//

import SwiftUI

struct StartScreen: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                VStack {
                    Spacer()
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.bottom, -20.0)
                        
                    Image("logo_text")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    Spacer()
                }
            }
        }
    }

struct ContentView: View {
    var body: some View {
        StartScreen()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
