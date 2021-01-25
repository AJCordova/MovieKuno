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
            ScrollView(.vertical) {
                ForEach(HomeMenu.allCases, id: \.self) { menu in
                    RowContainerView(rowTitle: menu.menuLabel(), menu: menu)
                }
            }.background(Color(Asset.background.color))
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
