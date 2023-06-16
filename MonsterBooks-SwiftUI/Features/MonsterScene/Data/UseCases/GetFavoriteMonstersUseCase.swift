//
//  GetFavoriteMonster.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

struct GetFavoriteMonsterUseCase {
    let monsterRepository = MonsterRepository()
    
    func call() async -> Result<[Monster], Error> {
        return await monsterRepository.getFavoritedMonster()
    }
}
