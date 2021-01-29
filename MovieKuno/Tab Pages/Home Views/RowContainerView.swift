//
//  RowContainerView.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/21/21.
//

import Foundation
import SwiftUI

struct RowContainerView: View {
    var title: String
    var movies: Movies
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                RowHeaderView(title: title)
                ScrollView(.horizontal, showsIndicators: false) {
                    MovieStackView(movies: movies)
                }
            }
        }
    }
}

struct MovieStackView: View {
    var movies: Movies
    var body: some View {
        HStack(spacing: 10) {
            ForEach( self.movies, id: \.self) { movie in
                MovieCell(movie: movie)
                    .frame(width: 180, height: 330)
                    .background(Color(Asset.cardBackground.color))
                    .cornerRadius(20)
            }
        }
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
    }
}
