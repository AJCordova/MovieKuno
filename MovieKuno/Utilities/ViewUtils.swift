//
//  ViewUtils.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/27/21.
//

import SwiftUI

struct CardView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 180, height: 330)
            .background(Color(Asset.cardBackground.color))
            .cornerRadius(20)
    }
}
