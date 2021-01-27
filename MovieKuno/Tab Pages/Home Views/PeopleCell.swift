//
//  PeopleCell.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/26/21.
//

import Foundation
import SwiftUI

struct PeopleCell: View {
    var actor: Actor
    var body: some View {
        VStack {
            Image(Asset.moviePlaceholder.name)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 200)
                .cornerRadius(20)
            Text(actor.name)
                .foregroundColor(Color(Asset.textColorMain.color))
                .font(.system(size: 17))
                .bold()
                .fixedSize(horizontal: false, vertical: true)
                .frame(minHeight: 35)
            Text("")
                .font(.system(size: 14))
                .foregroundColor(Color(Asset.textColorSecondary.color)).padding(0.5)
        }
    }
}
