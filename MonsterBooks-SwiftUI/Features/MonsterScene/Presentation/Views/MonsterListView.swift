//
//  MonsterListView.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import SwiftUI

struct MonsterListView: View {
    var body: some View {
        ScrollView {
            MonstersList(monsters: [])
        }
    }
}

struct MonsterListView_Previews: PreviewProvider {
    static var previews: some View {
        MonsterListView()
    }
}
