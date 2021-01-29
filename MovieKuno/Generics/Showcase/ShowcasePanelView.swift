//
//  ShowcasePanelView.swift
//  MovieKuno
//
//  Created by Amiel Jireh Cordova on 1/28/21.
//

import Foundation

import SwiftUI

struct ShowcasePanelView: View {
    var data: ShowcasePanelModel

    var body: some View {
        VStack {
            Image(data.image)
                .resizable()
                .scaledToFit()
                .padding()

            Text(data.title)
                .font(.system(size: 20, design: .rounded))
                .bold()

            Text(data.subTitle)
                .font(.system(size: 14, design: .rounded))
                .multilineTextAlignment(.center)
                .padding(.top, 10)
        }
    }
}

struct ShowcasePanelView_Previews: PreviewProvider {
    static var data = ShowcasePanelModel.data[0]
    static var previews: some View {
        ShowcasePanelView(data: data)
    }
}
