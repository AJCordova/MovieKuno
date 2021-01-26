//
//  HomeView.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/20/21.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(HomeMenuSection.allCases, id: \.self) { menu in
                    containedView(menu: menu)
                }
            }
            .background(Color(Asset.background.color))
        }
    }
    
    fileprivate func containedView(menu: HomeMenuSection) -> some View {
        switch menu {
        case .latestMovie, .popularMovie:
            return RowContainerView(menu: menu)
        case .latestTVShow, .popularTVShow:
            // TODO: replace with correct view
            return RowContainerView(menu: menu)
        case .popularPeople:
            // TODO: replace with correct view
            return RowContainerView(menu: menu)
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
