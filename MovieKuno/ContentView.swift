//
//  ContentView.swift
//  MovieKuno
//
//  Created by Amiel Jireh Cordova on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    @State var hasOnboarded = false
    var data = ShowcasePanelModel.data
    
    var body: some View {
        if !getOnboardState() {
            OnboardingView(data: data)
        } else {
            TabbarView()
        }
    }
    
    private func getOnboardState() -> Bool {
        return hasOnboarded
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
