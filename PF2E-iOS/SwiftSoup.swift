//
//  SwiftSoup.swift
//  PF2E-iOS
//
//  Created by Pat on 11/23/20.
//

import SwiftUI
import SwiftSoup

struct SwiftSoup: View {
    var body: some View {
        
        do {
            
            let url = URL(string: "")
            let html = try String(contentsOf: url!, encoding: String.Encoding.ascii)
            
            let webpage: Document = try SwiftSoup.parse(html)
            
            
            
        } catch Exception.Error(type: let type, Message: let message) {
            print(type)
            print(message)
        } catch {
            print("")
        }
    }
}

struct SwiftSoup_Previews: PreviewProvider {
    static var previews: some View {
        SwiftSoup()
    }
}
