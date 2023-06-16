//
//  GetMonsterTypesUseCase.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

struct GetMonsterTypesUseCase {
    let monsterRepository = MonsterRepository()
    
    func call() async -> Result<[MonsterType], Error> {
        return await monsterRepository.getMonsterTypes()
    }
}
