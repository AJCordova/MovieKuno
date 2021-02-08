//
//  DetailsView.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/29/21.
//

import Foundation
import SwiftUI

struct DetailsView: View {
    @Binding var isPresented: Bool
    @State var viewState = CGSize.zero
    var body: some View {
        VStack {
            Image(Asset.moviePlaceholder.name)
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width,
                       height: 250)
            Text("Movie Title")
                .modifier(Title())
        }
        .frame(width: UIScreen.main.bounds.width,
               height: UIScreen.main.bounds.height,
               alignment: .center)
        .offset(x: viewState.width, y: viewState.height)
        .gesture(
            DragGesture()
                .onChanged { value in
                    self.viewState = value.translation
                }
                .onEnded { value in
                    self.viewState = .zero
                    isPresented.toggle()
                }
        )
    }
}
