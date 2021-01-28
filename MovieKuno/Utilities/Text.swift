//
//  Text.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/25/21.
//

import Foundation
import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 17, weight: .bold))
            .foregroundColor(Color(Asset.textColorMain.color))
            .fixedSize(horizontal: false, vertical: true)
            .frame(minHeight: 35)
    }
}
