//
//  MonstersList.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import SwiftUI

struct MonstersList: View {
    let monsters: [MonsterItemUI]
    
    var body: some View {
        LazyVStack {
            ForEach(monsters) { monster in
                MonsterCard(monster: monster)
            }
        }
        .padding(.horizontal)
    }
}

struct MonstersList_Previews: PreviewProvider {
    static var previews: some View {
        MonstersList(monsters: [])
    }
}
