//
//  HomeView.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/20/21.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @State private var movies: Movies = Movie.arrayTemplate
    @Binding var isPresented: Bool
    var body: some View {
        VStack {
            ScrollView {
                ForEach(HomeMenuSection.allCases, id: \.self) { menu in
                    RowHeaderView(title: menu.menuLabel())
                    ForEach(movies, id: \.self) { movie in
                        MovieCell(movie: movie)
                            .modifier(CardModifier())
                            .onTapGesture {
                                withAnimation(.easeIn) {
                                    isPresented.toggle()
                                }
                            }
                    }
                }
            }
            .background(Color(Asset.background.color))
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

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            HomeView().colorScheme(.light)
//            HomeView().colorScheme(.dark)
//        }
//        .preferredColorScheme(.dark)
//    }
//}
