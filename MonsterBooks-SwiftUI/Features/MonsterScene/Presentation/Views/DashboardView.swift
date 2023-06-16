//
//  DashboardView.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import SwiftUI

struct DashboardView: View {

    @StateObject var dashboardViewModel = DashboardViewModel()
    
    var body: some View {
        content
            .environmentObject(dashboardViewModel)
    }
    
    var content: some View {
        NavigationStack {
            ScrollView {
                Section (
                    header: HeaderComponent(title: "Categories")
                ) {
                    CategoriesComponent()
                        .padding(.bottom)
                }
                Section (
                    header: HeaderComponent(title: "Favorite")
                ) {
                    FavoritesComponent()
                }
            }
            .navigationTitle("Monsters")
            .navigationBarTitleDisplayMode(.large)
            .onAppear{
                self.dashboardViewModel.didAppear()
            }
            .toolbar {
                Button("\(Image(systemName: "plus"))") {
                    print("About tapped!")
                }
            }
        }
    }
    
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

struct HeaderComponent: View {
    var title = "NaN"
    var body: some View {
        Text(title)
            .modifier(FullWidth())
            .padding(.horizontal)
            .font(.callout)
            .bold()
            .foregroundColor(.gray)
    }
}
