//
//  MonsterView.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import SwiftUI

struct MonsterView: View {
    var body: some View {
        MonsterComponent()
            .toolbar {
                Button("About") {
                    print("About tapped!")
                }
            }
    }
}

struct MonsterView_Previews: PreviewProvider {
    static var previews: some View {
        MonsterView()
    }
}
