//
//  GetMonsterByCategoryUseCase.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

struct GetMonsterByCategoryUseCase {
    let monsterRepository = MonsterRepository()
    
    func call(type: MonsterType) async -> Result<[Monster], Error> {
        return await monsterRepository.getMonster(by: type)
    }
}
