//
//  DashboardViewModelOutput.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

protocol DashboardViewModelOutput {
    var monsterTypesUI: DashboardViewModel.MonsterTypeUI { get }
    var favoritedMonsters: [MonsterItemUI] { get }
}
