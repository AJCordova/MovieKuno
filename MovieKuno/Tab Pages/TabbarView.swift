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
    var body: some View {
        TabView(selection: $selected) {
            HomeView().tabItem {
                Text("Home")
            }
            SearchView().tabItem {
                Text("Search")
            }
            SettingsView().tabItem {
                Text("Settings")
            }
        }
    }
}
struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
