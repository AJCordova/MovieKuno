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
            ZStack(alignment: .center) {
                Image(Asset.moviePlaceholder.name)
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .blur(radius: 10)
                Image(Asset.moviePlaceholder.name)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 200)
                    .cornerRadius(20)
                    .padding(.top, 20)
            }
            VStack {
                Text(movie.title)
                    .modifier(Title())
                Text(movie.releaseDate)
                    .font(.system(size: 14))
                    .foregroundColor(Color(Asset.textColorSecondary.color))
                HStack {
                    Text("\u{2022}Novel \u{2022}Children's Literature \u{2022}Fantasy Fiction \u{2022}HighFantasy")
                        .font(.system(size: 12))
                        .foregroundColor(Color(Asset.textColorSecondary.color))
                        .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    RatingView(ratings: movie.voteAverage)
               }.padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 20))
            }.frame(minHeight: 130, idealHeight: 130)
            .background(Color(Asset.cardBackground.color))
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
