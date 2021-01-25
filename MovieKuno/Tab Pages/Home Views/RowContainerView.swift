//
//  RowContainerView.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/21/21.
//

import Foundation
import SwiftUI

struct RowContainerView: View {
    var rowTitle: String
    var menu: HomeMenu
    var body: some View {
        ZStack {
            Color(Asset.background.color)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                setupRowHeader()
                ScrollView(.horizontal) {
                    switch menu {
                    case .latestMovie, .popularMovie:
                        setupMoviesStack()
                    case .latestTVShow, .popularTVShow:
                        setupTVShowsStack()
                    case .popularPeople:
                        setupMoviesStack()
                    }
                }
            }
        }
    }
    
    fileprivate func setupRowHeader() -> some View {
        return HStack {
            Text(rowTitle)
                .font(.system(size: 20))
                .bold()
            Spacer()
            Text(L10n.seeAll)
                .foregroundColor(.blue)
            
        }.padding(
            EdgeInsets(top: 25, leading: 10, bottom: 0, trailing: 10))
    }
    
    fileprivate func setupMoviesStack() -> some View {
        return HStack(spacing: 10) {
            ForEach(prepareMovieData(), id: \.self) { movie in
                MovieCell(movie: movie)
                    .frame(width: 180, height: 330)
                    .background(Color(Asset.cardBackground.color))
                    .cornerRadius(20)
            }
        }.padding(
            EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
    }
    
    fileprivate func setupTVShowsStack() -> some View {
        return HStack(spacing: 10) {
            ForEach(prepareTVShowsData(), id: \.self) { tvShow in
                TVShowCell(tvShow: tvShow)
                    .frame(width: 180, height: 330)
                    .background(Color(Asset.cardBackground.color))
                    .cornerRadius(20)
            }
        }.padding(
            EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
    }
    
    fileprivate func prepareTVShowsData() -> TVShows {
        let tvShows: TVShows = [
            TVShowModel(id: 1,
                        name: "How I Met Your Mother",
                        numberOfSeasons: 7,
                        firstAirDate: "2001",
                        voteAverage: 2),
            TVShowModel(id: 2,
                        name: "F.R.I.E.N.D.S",
                        numberOfSeasons: 10,
                        firstAirDate: "2001",
                        voteAverage: 3),
            TVShowModel(id: 2,
                        name: "Big Bang Theory",
                        numberOfSeasons: 10,
                        firstAirDate: "2001",
                        voteAverage: 3)
        ]
        return tvShows
    }
    
    fileprivate func prepareMovieData() -> Movies {
        let movies: Movies = [
            Movie(id: 1,
                  title: "Harry Potter and the Philosopher Stone",
                  posterURL: "",
                  voteAverage: "4.5",
                  releaseDate: "21 November 200",
                  genres: [1, 2, 3]),
            Movie(id: 2, title: "Despicable Me 3",
                  posterURL: "",
                  voteAverage: "6.3",
                  releaseDate: "14 June 2017",
                  genres: [1, 2, 3]),
            Movie(id: 3, title: "Monsters University",
                  posterURL: "",
                  voteAverage: "4.5",
                  releaseDate: "26 June 2013",
                  genres: [1, 2, 3])
        ]
        
        return movies
        
    }
}
