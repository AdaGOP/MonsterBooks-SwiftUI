//
//  Monster.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

enum MonsterType: String, CaseIterable {
    case fire = "Fire"
    case water = "Water"
    case earth = "Earth"
    case air = "Air"
    case metal = "Metal"
    case tree = "Tree"
}

class Monster: Identifiable, Equatable {
    let id: String = UUID().uuidString
    var name: String?
    var age: Int?
    var description: String?
    var type: MonsterType?
    var isFavorite: Bool
    
    init(
        name: String?,
        age: Int?,
        description: String?,
        type: MonsterType,
        isFavorite: Bool = false
    ) {
        self.name = name
        self.description = description
        self.age = age
        self.type = type
        self.isFavorite = isFavorite
    }

    static func == (lhs: Monster, rhs: Monster) -> Bool {
        return lhs.id == rhs.id
        && lhs.name == rhs.name
        && lhs.age == rhs.age
        && lhs.description == rhs.description
        && lhs.type == rhs.type
        && lhs.isFavorite == rhs.isFavorite
    }
}
