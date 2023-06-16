//
//  MockDataSource.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

protocol MockMonsterDataSourceProtocol {
    func getMonsters() async -> Result<[Monster], Error>
    func getMonsterType() async -> Result<[MonsterType], Error>
    func getMonster(by category: MonsterType) async -> Result<[Monster], Error>
    func getFavoritedMonster() async -> Result<[Monster], Error>
    mutating func create(monster: Monster) async -> Result<Void, Error>
    mutating func update(monster: Monster) async -> Result<Void, Error>
}
