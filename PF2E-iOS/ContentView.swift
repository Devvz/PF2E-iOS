//
//  ContentView.swift
//  PF2E-iOS
//
//  Created by Patrick Michael Kerrigan on 11/19/20.
//

import SwiftUI

struct StartScreen: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, -20.0)
                    .offset(y: 50)
                Image("logo_text")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(y: 50)
                VStack {
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("start_button")
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                            .padding(.horizontal, 50.0)
                            .offset(y: -50)
                    }
                }
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
