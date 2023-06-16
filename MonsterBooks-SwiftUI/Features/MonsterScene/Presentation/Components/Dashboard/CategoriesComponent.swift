//
//  CategoriesComponent.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import SwiftUI

struct CategoriesComponent: View {
    @EnvironmentObject var dashboardViewMode: DashboardViewModel
        
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            GridStack(
                rows: 2,
                columns: dashboardViewMode.monsterTypesUI.types.count / 2
            ) { row, column in
                CategoryCard(row: row, column: column)
            }
            .padding(.horizontal)
        }
    }
}

struct CategoriesComponent_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesComponent()
    }
}
