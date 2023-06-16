//
//  FullWidth.swift
//  MonsterBooks-SwiftUI
//
//  Created by Handy Handy on 15/06/23.
//

import SwiftUI

struct FullWidth: ViewModifier {
    var alignment = Alignment.topLeading
    
    func body(content: Content) -> some View {
        content
            .frame(
                minWidth: .zero,
                maxWidth: .infinity,
                alignment: alignment
            )
    }
}
