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
            Image("movie-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 200)
                .cornerRadius(20)
            Text(tvShow.name).foregroundColor(Color("text-color-main"))
                .font(.system(size: 17))
                .bold()
                .foregroundColor(Color("text-color-main"))
                .fixedSize(horizontal: false, vertical: true)
                .frame(minHeight: 35)
            Text("\(tvShow.numberOfSeasons) Season(s)")
                .font(.system(size: 14))
                .foregroundColor(Color("text-color-secondary")).padding(0.5)
            
           HStack {
            Text(tvShow.firstAirDate)
                .font(.system(size: 12))
                .foregroundColor(Color("text-color-secondary"))
                .fixedSize(horizontal: false, vertical: true)
                Spacer()
            RatingView(ratings: "\(tvShow.voteAverage)")
           }.padding(5)
        }
    }
}

