//
//  NewLoadScreen.swift
//  PF2E-iOS
//
//  Created by Pat on 11/20/20.
//

import SwiftUI

struct NewLoadScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination:
                    NewCharacter()) {
                    Text("Create New Character")
                }
                .padding(.all)
                .frame(width: 300.0)
                .background(Color.gray)
                .foregroundColor(.white)
                .font(.title)
                
                NavigationLink(destination: LoadCharacter()) {
                    Text("Load Character")
                }
                .padding(.all)
                .frame(width: 300.0)
                .background(Color.gray)
                .foregroundColor(.white)
                .font(.title)
                        
                        
                        
                        
                    .navigationBarBackButtonHidden(true)
            }
            .navigationTitle(Text("Home"))
        }
    }
}

struct NewLoadScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewLoadScreen()
    }
}
