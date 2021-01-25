//
//  TVShowCell.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/22/21.
//

import Foundation
import SwiftUI

struct TVShowCell: View {
    var tvShow: TVShowModel
    var body: some View {
        VStack {
            Image(Asset.moviePlaceholder.name)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 200)
                .cornerRadius(20)
            Text(tvShow.name).foregroundColor(Color(Asset.textColorMain.color))
                .font(.system(size: 17))
                .bold()
                .foregroundColor(Color(Asset.textColorMain.color))
                .fixedSize(horizontal: false, vertical: true)
                .frame(minHeight: 35)
            Text("\(tvShow.numberOfSeasons) \(L10n.season)")
                .font(.system(size: 14))
                .foregroundColor(Color(Asset.textColorSecondary.color)).padding(0.5)
            
           HStack {
            Text(tvShow.firstAirDate)
                .font(.system(size: 12))
                .foregroundColor(Color(Asset.textColorSecondary.color))
                .fixedSize(horizontal: false, vertical: true)
                Spacer()
            RatingView(ratings: "\(tvShow.voteAverage)")
           }.padding(5)
        }
    }
}

