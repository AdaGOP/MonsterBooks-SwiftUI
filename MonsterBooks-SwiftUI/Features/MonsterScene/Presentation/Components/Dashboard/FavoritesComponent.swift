//
//  FavoritesComponent.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import SwiftUI

struct FavoritesComponent: View {
    @EnvironmentObject var dashboardViewModel: DashboardViewModel
    
    var body: some View {
        ScrollView {
            MonstersList(monsters: dashboardViewModel.favoritedMonsters)
        }
    }
}

struct FavoritesComponent_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesComponent()
    }
}
