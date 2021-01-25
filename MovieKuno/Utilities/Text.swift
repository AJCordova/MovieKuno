//
//  Text.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/25/21.
//

import Foundation
import SwiftUI

struct Title: ViewModifier {
    var minHeight: CGFloat
    var fontSize: CGFloat
    func body(content: Content) -> some View {
        content
            .font(.system(size: fontSize, weight: .bold))
            .foregroundColor(Color(Asset.textColorMain.color))
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: minHeight)
    }
}
