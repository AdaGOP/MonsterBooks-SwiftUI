//
//  MonsterRepository.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

struct MonsterRepository: MonsterRepositoryProtocol {

    private var monsterMockDataSource: MockMonsterDataSource = MockMonsterDataSource()
    
    func getMonsters() async -> Result<[Monster], Error> {
        switch await monsterMockDataSource.getMonsters() {
        case .success(let monsters):
            return .success(monsters)
        case .failure(let error):
            return .failure(error)
        }
    }
    
    func getMonsterTypes() async -> Result<[MonsterType], Error> {
        switch await monsterMockDataSource.getMonsterType() {
        case .success(let monsterTypes):
            return .success(monsterTypes)
        case .failure(let error):
            return .failure(error)
        }
    }
    
    func getFavoritedMonster() async -> Result<[Monster], Error> {
        switch await monsterMockDataSource.getFavoritedMonster() {
        case .success(let monsters):
            return .success(monsters)
        case .failure(let error):
            return .failure(error)
        }
    }
    
    func getMonster(by category: MonsterType) async -> Result<[Monster], Error> {
        switch await monsterMockDataSource.getMonster(by: category) {
        case .success(let monsters):
            return .success(monsters)
        case .failure(let error):
            return .failure(error)
        }
    }
    
    mutating func create(monster: Monster) async -> Result<Void, Error> {
        let created = await monsterMockDataSource.create(monster: monster)
        switch created {
        case .success(let result):
            return .success(result)
        case .failure(let error):
            return .failure(error)
        }
    }
    
    mutating func update(monster: Monster) async -> Result<Void, Error> {
        let updated = await monsterMockDataSource.update(monster: monster)
        switch updated {
        case .success(let result):
            return .success(result)
        case .failure(let error):
            return .failure(error)
        }
    }
    
}
