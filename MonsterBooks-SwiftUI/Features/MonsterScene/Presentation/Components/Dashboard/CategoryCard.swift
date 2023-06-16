//
//  CategoryCard.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import SwiftUI

struct CategoryCard: View {
    
    @EnvironmentObject var dashboardViewMode: DashboardViewModel
    
    var row: Int
    var column: Int
    
    var body: some View {
        HStack {
            Text(dashboardViewMode.monsterTypesUI.formatted()[row][column].rawValue)
                .font(.title)
            .foregroundColor(.white)
        }
        .frame(width: 130, height: 60)
        .padding()
        .background(dashboardViewMode.monsterTypesUI.formatted()[row][column].getColor())
        .cornerRadius(8)
        .shadow(
            color: Color.black.opacity(0.1),
            radius: 4)
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(row: 1, column: 2)
    }
}

