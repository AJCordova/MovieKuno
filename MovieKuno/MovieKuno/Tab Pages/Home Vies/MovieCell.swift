//
//  MovieCell.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/21/21.
//

import Foundation
import SwiftUI

struct MovieCell: View {
    var movie: Movie!
    var body: some View {
        VStack {
            Image("movie-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 200)
                .cornerRadius(20)
            Text("Harry Potter and the Philosopher Stone").foregroundColor(Color("text-color-main"))
                .font(.system(size: 17))
                .bold()
                .foregroundColor(Color("text-color-main"))
                .fixedSize(horizontal: false, vertical: true)
            Text("November 21, 2001")
                .font(.system(size: 14))
                .foregroundColor(Color("text-color-secondary")).padding(0.5)
            
           HStack {
                Text("\u{2022}Fantasy \u{2022}Drama \u{2022}Kids")
                    .font(.system(size: 12))
                    .foregroundColor(Color("text-color-secondary"))
                    .fixedSize(horizontal: false, vertical: true)
                Spacer()
            HStack {
                Image(systemName: "star.fill")
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(Color("text-color-secondary"))
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 12, height: 12)
                Text("4.8")
                    .font(.system(size: 12))
                    .foregroundColor(Color("text-color-secondary"))
            }.padding(5)
           }
        }
    }
}
struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell().frame(width: 180, height: 312, alignment: .center)
    }
}
