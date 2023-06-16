//
//  MockDataSource.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

struct MockMonsterDataSource: MockMonsterDataSourceProtocol {
        
    func getMonsters() async -> Result<[Monster], Error> {
        return .success(Mock.data)
    }
    
    
    func getMonsterType() async -> Result<[MonsterType], Error> {
        return .success(MonsterType.allCases)
    }
    
    
    func getMonster(by category: MonsterType) async -> Result<[Monster], Error> {
        let monsters: [Monster] = Mock.data
        let categorizedMonsters = monsters.filter({ monster in
            monster.type == category
        })
        return .success(categorizedMonsters)
    }
    
    func getFavoritedMonster() async -> Result<[Monster], Error> {
        let monsters: [Monster] = Mock.data
        let favoritedMonsters = monsters.filter({ monster in
            return monster.isFavorite
        })
        return .success(favoritedMonsters)
    }
    
    mutating func create(monster: Monster) async -> Result<Void, Error> {
        return .success(Mock.data.append(monster))
    }
    
    mutating func update(monster: Monster) async -> Result<Void, Error> {
        guard let index = Mock.data.firstIndex(where: { $0.id == monster.id}) else {
            return .failure(Mock.MockError.monsterNotFound)
        }
        return .success(Mock.data[index] = monster)
    }
    
    
}
