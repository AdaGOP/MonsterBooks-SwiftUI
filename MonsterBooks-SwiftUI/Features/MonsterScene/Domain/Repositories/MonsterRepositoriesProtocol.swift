//
//  MockDataRepositories.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

protocol MonsterRepositoryProtocol {
    func getMonsters() async -> Result<[Monster], Error>
    func getMonsterTypes() async -> Result<[MonsterType], Error>
    func getFavoritedMonster() async -> Result<[Monster], Error>
    func getMonster(by category: MonsterType) async -> Result<[Monster], Error>
    mutating func create(monster: Monster) async -> Result<Void, Error>
    mutating func update(monster: Monster) async -> Result<Void, Error>
}
