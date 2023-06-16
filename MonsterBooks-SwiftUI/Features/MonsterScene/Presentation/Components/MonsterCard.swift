//
//  MonsterCard.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import SwiftUI

struct MonsterCard: View {
    
    var monster: MonsterItemUI
    
    var body: some View {
        HStack {
            monster.type.getImage()
                .padding(.trailing)
            VStack (alignment: .leading) {
                Text(monster.name)
                    .font(.title)
                Text(monster.type.rawValue)
                    .font(.title3)
            }
            .foregroundColor(.white)
            Spacer()
        }
        .frame(height: 120)
        .padding()
        .background(monster.type.getColor())
        .cornerRadius(8)
        .shadow(
            color: Color.black.opacity(0.1),
            radius: 4)
    }
}

