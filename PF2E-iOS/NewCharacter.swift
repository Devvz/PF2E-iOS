//
//  NewCharacter.swift
//  PF2E-iOS
//
//  Created by Pat on 11/20/20.
//

import SwiftUI

struct ClassView: View {
    var classes = ["Alchemist","Barbarian","Bard","Champion","Cleric","Druid","Fighter","Monk","Ranger","Rogue","Sorcerer","Wizard"]
    @State private var selectedClass = 0
    var body: some View {
        Form {
            Section {
                Picker(selection: $selectedClass, label: Text("Class")) {
                    ForEach(0 ..< classes.count) {
                        Text(self.classes[$0])
                    }
                }
            }
        }
    }
}

struct NewCharacter: View {
    var body: some View {
        List {
                NavigationLink(
                destination: ClassView(),
                label: {
                    Text("Class")
            })
        }
    }
}

struct NewCharacter_Previews: PreviewProvider {
    static var previews: some View {
        NewCharacter()
    }
}
