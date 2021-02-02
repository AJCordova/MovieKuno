//
//  TabbarView.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/21/21.
//

import Foundation
import SwiftUI


struct TabbarView: View {
    @State var selected: Int = 0
    @State var isPresented = false
    var body: some View {
        if !isPresented {
            TabView(selection: $selected) {
                HomeView(isPresented: $isPresented).tabItem {
                    Text("Home")
                }
                SearchView().tabItem {
                    Text("Search")
                }
                SettingsView().tabItem {
                    Text("Settings")
                }
            }
            .transition(
                .scale(scale: 0,
                       anchor: .center))
        } else {
            DetailsView(isPresented: $isPresented)
                .transition(
                    .scale(scale: 0,
                           anchor: .center))
        }
    }
}
struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
