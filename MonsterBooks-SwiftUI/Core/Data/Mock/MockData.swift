//
//  MockData.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import Foundation

struct Mock {
    static var data = [
        Monster(name: "Gloop1", age: 2, description: "Gloop is a very young monster", type: .air),
        Monster(name: "Gloop2", age: 2, description: "Gloop is a very young monster", type: .earth, isFavorite: true),
        Monster(name: "Gloop3", age: 2, description: "Gloop is a very young monster", type: .air),
        Monster(name: "Gloop4", age: 2, description: "Gloop is a very young monster", type: .air),
        Monster(name: "Gloop5", age: 2, description: "Gloop is a very young monster", type: .metal),
        Monster(name: "Gloop6", age: 2, description: "Gloop is a very young monster", type: .tree),
        Monster(name: "Gloop7", age: 2, description: "Gloop is a very young monster", type: .water),
        Monster(name: "Gloop8", age: 2, description: "Gloop is a very young monster", type: .water),
        Monster(name: "Gloop9", age: 2, description: "Gloop is a very young monster", type: .metal),
        Monster(name: "Gloop10", age: 2, description: "Gloop is a very young monster", type: .fire),
        Monster(name: "Gloop11", age: 2, description: "Gloop is a very young monster", type: .earth)
    ]
    
    enum MockError: Error {
        case monsterNotFound
    }
}

