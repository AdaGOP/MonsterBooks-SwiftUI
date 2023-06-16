//
//  MonsterType+Color+Image.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import SwiftUI

extension MonsterType {
    func getColor() -> Color {
        switch self {
        case .fire:
            return ColorTheme.red
        case .water:
            return ColorTheme.purple
        case .earth:
            return ColorTheme.brown
        case .air:
            return ColorTheme.blue
        case .metal:
            return ColorTheme.gray
        case .tree:
            return ColorTheme.green
        }
    }
}

extension MonsterType {
    func getImage() -> Image {
        switch self {
        case .fire:
            return Images.redMonster
        case .water:
            return Images.lightBlueMonster
        case .earth:
            return Images.greenMonster
        case .air:
            return Images.lightPurpleMonster
        case .metal:
            return Images.purpleMonster
        case .tree:
            return Images.treeMonster
        }
    }
}
