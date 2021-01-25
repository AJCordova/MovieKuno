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
    var movies: Movies
    
    var body: some View {
        ZStack {
            Color(Asset.background.color)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                setupRowHeader()
                ScrollView(.horizontal) {
                    setupMoviesStack()
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
            ForEach( self.movies, id: \.self) { movie in
                MovieCell(movie: movie)
                    .frame(width: 180, height: 330)
                    .background(Color(Asset.cardBackground.color))
                    .cornerRadius(20)
            }
        }.padding(
            EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
    }
}
