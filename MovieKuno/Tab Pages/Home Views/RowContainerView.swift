//
//  RowContainerView.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/21/21.
//

import Foundation
import SwiftUI

struct RowContainerView: View {
    var menu: HomeMenuSection
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                RowHeaderView(title: menu.menuLabel())
                ScrollView(.horizontal, showsIndicators: false) {
                    switch menu {
                    case .latestMovie, .popularMovie:
                        MovieStackView()
                    case .latestTVShow, .popularTVShow:
                        TVShowStackView()
                    case .popularPeople:
                        // TODO: replace with correct view
                        TVShowStackView()
                    }
                }
            }
        }
    }
}

struct RowHeaderView: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 20))
                .bold()
            Spacer()
            Text(L10n.seeAll)
                .foregroundColor(.blue)
            
        }
        .padding(EdgeInsets(top: 25, leading: 10, bottom: 0, trailing: 10))
    }
}

struct MovieStackView: View {
    @State private var movies: Movies = tempMovies
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

struct TVShowStackView: View {
    @State private var tvShows: TVShows = tempTvShows
    var body: some View {
        HStack(spacing: 10) {
            ForEach( self.tvShows, id: \.self) { tvShow in
                TVShowCell(tvShow: tvShow)
                    .frame(width: 180, height: 330)
                    .background(Color(Asset.cardBackground.color))
                    .cornerRadius(20)
            }
        }
        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
    }
}
