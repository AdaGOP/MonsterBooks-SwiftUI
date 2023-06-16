//
//  CreateMonsterUseCase.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

struct CreateMonsterUseCase {
    var monsterRepository = MonsterRepository()
    
    mutating func call(monster: Monster) async -> Result<Void, Error> {
        return await monsterRepository.create(monster: monster)
    }
}

