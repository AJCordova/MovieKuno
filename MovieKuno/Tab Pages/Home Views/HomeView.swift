//
//  HomeView.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/20/21.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @State private var movies: Movies = [
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
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                ForEach(HomeMenu.allCases, id: \.self) { menu in
                    containedView(menu: menu)
                }
            }
            .background(Color(Asset.background.color))
        }
    }
    
    func containedView(menu: HomeMenu) -> some View {
        switch menu {
        case .latestMovie, .popularMovie:
            let view = RowContainerView(rowTitle: menu.menuLabel(), movies: movies)
            return view
        case .latestTVShow, .popularTVShow:
            // TODO: replace with correct view
            let view = RowContainerView(rowTitle: menu.menuLabel(), movies: movies)
            return view
        case .popularPeople:
            // TODO: replace with correct view
            let view = RowContainerView(rowTitle: menu.menuLabel(), movies: movies)
            return view
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView().colorScheme(.light)
            HomeView().colorScheme(.dark)
        }
        .preferredColorScheme(.dark)
    }
}
