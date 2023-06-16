//
//  MonsterViewModel.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation
import Combine

protocol DashboardViewModelProtocol: DashboardViewModelInput, DashboardViewModelOutput {}

class DashboardViewModel: ObservableObject, DashboardViewModelProtocol {
    
    // MARK: - OUTPUT
    @Published var monsterTypesUI: MonsterTypeUI = MonsterTypeUI()
    @Published var favoritedMonsters: [MonsterItemUI] = []
    
    //MARK: - Private
    private func getMonsterCategories() async {
        let monsterTypeResult = await GetMonsterTypesUseCase().call()
        switch monsterTypeResult {
        case .success(let monsterTypes):
            await MainActor.run {
                self.monsterTypesUI.types = monsterTypes
            }
        case .failure(let error):
            // handle error here, you can create error output at code below.
            print(error.localizedDescription)
        }
        
    }
    
    private func getFavoritedMonster() async {
        let monstersResult = await GetFavoriteMonsterUseCase().call()
        switch monstersResult {
        case .success(let monsters):
            await MainActor.run{
                self.favoritedMonsters = monsters.map({ monster in
                        .init(monster: monster)
                })
            }
        case .failure(let error):
            // handle error here, you can create error output at code below.
            print(error.localizedDescription)
        }
        
    }
    
    private func onLoad() async {
        await getMonsterCategories()
        await getFavoritedMonster()
    }
}

extension DashboardViewModel {
    func didAppear() {
        Task { await onLoad() }
    }
}

extension DashboardViewModel {
    struct MonsterTypeUI {
        var types: [MonsterType] = []
        
        func formatted() -> [[MonsterType]] {
            return stride(from: 0, to: types.count, by: 3).map {
                Array(types[$0 ..< min($0 + 3, types.count)])
            }
        }
    }
}

struct MonsterItemUI: Identifiable {
    let id = UUID().uuidString
    let monster: Monster
    let name: String
    let type: MonsterType
    
    init(monster: Monster) {
        self.monster = monster
        self.name = monster.name ?? ""
        self.type = monster.type ?? .fire
    }
}
