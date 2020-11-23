//
//  NewCharacter.swift
//  PF2E-iOS
//
//  Created by Pat on 11/20/20.
//

import SwiftUI

struct NewCharacter: View {
    // character name
    @State private var characterName = ""
    // player name
    @State private var playerName = ""
    // class data
    var classes = ["Alchemist","Barbarian","Bard","Champion","Cleric","Druid","Fighter","Monk","Ranger","Rogue","Sorcerer","Wizard"]
    @State private var selectedClass = 0
    // ancestry data
    var ancestries = ["Dwarf", "Elf", "Gnome", "Goblin", "Half-Elf", "Halfling", "Half-Orc", "Human"]
    @State private var selectedAncestry = 0
    // background data
    var backgrounds = ["Acolyte", "Acrobat", "Animal Whisperer", "Artisan", "Artist", "Barkeep", "Barrister", "Bounty Hunter", "Charlatan", "Criminal", "Detective", "Emissasry", "Entertainer", "Farmhand", "Field Medic", "Fortune Teller", "Gambler", "Gladiator", "Guard", "Herbalist", "Hermit", "Hunter", "Laborer", "Martial Disciple", "Merchant", "Miner", "Noble", "Nomad", "Prisoner", "Sailor", "Scholar", "Scout", "Street Urchin", "Tinker", "Warrior"]
    @State private var selectedBackground = 0
    // plan to add description for each background below/above title
    var backgroundDescription = [""]
    // character size (ft/in)
    @State private var characterSizeFeet = 4
    @State private var characterSizeInches = 1
    // character alignment
    var alignments = ["Lawful Good", "Neutral Good", "Chaotic Good", "Lawful Neutral", "Neutral", "Chaotic Neutral", "Lawful Evil", "Neutral Evil", "Chaotic Evil"]
    @State private var selectedAlignment = 0
    // character traits
    @State private var characterTrait = ""
    // diety
    @State private var deityChoice = ""
    // ability scores (need to calculate automatically)
    
    var body: some View {
        Form {
            Section(header: Text("Character's Name")) {
                TextField("Character's Name", text: $characterName)
                    .keyboardType(.alphabet)
            }
            Section(header: Text("Player's Name")) {
                TextField("Player's Name", text: $playerName)
                    .keyboardType(.alphabet)
            }
            Section(){
                Picker(selection: $selectedClass, label: Text("Class")) {
                    ForEach(0 ..< classes.count) {
                        Text(self.classes[$0])
                    }
                }
                Picker(selection: $selectedAncestry, label: Text("Ancestry")) {
                    ForEach(0 ..< ancestries.count) {
                        Text(self.ancestries[$0])
                    }
                }
                Picker(selection: $selectedBackground, label: Text("Background")) {
                    ForEach(0 ..< backgrounds.count) {
                        Text(self.backgrounds[$0])
                    }
                }
            }
            Section(){
                Picker(selection: $selectedAlignment, label: Text("Alignment")) {
                    ForEach(0 ..< alignments.count) {
                        Text(self.alignments[$0])
                    }
                }
            }
            Section(header: Text("Height")){
                HStack() {
                    Stepper("", value: $characterSizeFeet, in: 4...10)
                        
                    Text("\(characterSizeFeet) Feet")
                    
                    Stepper("", value: $characterSizeInches, in: 1...11)
                    
                    Text("\(characterSizeInches) Inches")
                }
            }
            
            Section(header: Text("Traits")){
                TextField("Traits", text: $characterTrait)
                    .keyboardType(.alphabet)
            }
            Section(header: Text("Deity")){
                TextField("Deity", text: $deityChoice)
                    .keyboardType(.alphabet)
            }
        }
        .navigationBarItems(trailing:
                                HStack {
                                    Button(action: {
                                        print("Next button pressed...")
                                    }) {
                                        HStack {
                                            Text("Skills")
                                                .font(.body)
                                            Image(systemName: "chevron.right").imageScale(.large).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                        }
                                    }
                                }
                            )
    }
}

struct NewCharacter_Previews: PreviewProvider {
    static var previews: some View {
        NewCharacter()
    }
}
