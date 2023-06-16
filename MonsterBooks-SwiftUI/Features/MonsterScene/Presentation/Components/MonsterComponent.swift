//
//  Monsterview.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import SwiftUI

struct MonsterComponent: View {
    @State private var name: String = ""
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"
    
    var body: some View {
        ScrollView {
            Form {
                VStack {
                    ZStack (alignment: .bottomTrailing) {
                        Images.redMonster
                            .resizable()
                            .scaledToFit()
                        Button {
                            print("test")
                        } label: {
                            Image(systemName: "heart")
                                .imageScale(.large)
                        }
                    }
                    .frame(height: 250)
                    HStack {
                        Text("Name")
                            .bold()
                        Spacer()
                        TextField(
                            "Gloop",
                            text: $name
                        )
                        .frame(width: 180)
                        .textFieldStyle(.roundedBorder)
                    }
                    .padding(.horizontal)
                    .padding(.top, 32)
                    HStack {
                        Text("Name")
                            .bold()
                        Spacer()
                        TextField(
                            "Gloop",
                            text: $name
                        )
                        .frame(width: 180)
                        .textFieldStyle(.roundedBorder)
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                    HStack {
                        Text("Type")
                            .bold()
                        Spacer()
                        Picker("", selection: $selectedColor) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                    Group {
                        Text("Description")
                            .modifier(FullWidth())
                            .bold()
//                        TextField(
//                            "Type Your Description",
//                            text: $name
//                        )
//                        .multilineTextAlignment(.leading)
                        TextEditor(text: $name)
                    }
                    .padding(.horizontal)
                    .padding(.top, 12)
                }
            }
            .formStyle(.columns)
        }
    }
}

struct Monsterview_Previews: PreviewProvider {
    static var previews: some View {
        MonsterComponent()
    }
}
