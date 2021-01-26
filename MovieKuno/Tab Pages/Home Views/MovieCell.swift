//
//  MovieCell.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/21/21.
//

import Foundation
import SwiftUI

struct MovieCell: View {
    var movie: Movie
    var body: some View {
        VStack {
            Image(Asset.moviePlaceholder.name)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 200)
                .cornerRadius(20)
            Text(movie.title)
                .modifier(Title(minHeight: 35, fontSize: 17))
            Text(movie.releaseDate)
                .font(.system(size: 14))
                .foregroundColor(Color(Asset.textColorSecondary.color)).padding(0.5)
            HStack {
                Text("")
                    .font(.system(size: 12))
                    .foregroundColor(Color(Asset.textColorSecondary.color))
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                RatingView(ratings: movie.voteAverage)
           }.padding(5)
        }
    }
}

struct RatingView: View {
    var ratings: String
    var body: some View {
        HStack {
            Image(systemName: L10n.starFill)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(Color(Asset.textColorSecondary.color))
                .aspectRatio(contentMode: .fill)
                .frame(width: 12, height: 12)
            Text(ratings)
                .font(.system(size: 12))
                .foregroundColor(Color(Asset.textColorSecondary.color))
        }
    }
}
