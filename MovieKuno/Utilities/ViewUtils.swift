//
//  ViewUtils.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/29/21.
//

import Foundation
import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width - 20, height: 320)
            .background(Color(Asset.cardBackground.color))
            .cornerRadius(20)
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            .shadow(color: Color(Asset.textColorSecondary.color).opacity(0.5), radius: 5, x: 0, y: 0)
    }
}
