//
//  GetMonstersUseCase.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

struct GetMonstersUseCase {
    let monsterRepository = MonsterRepository()
    
    func call() async -> Result<[Monster], Error> {
        return await monsterRepository.getMonsters()
    }
}
