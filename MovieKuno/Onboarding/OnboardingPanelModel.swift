//
//  OnboardingPanelModel.swift
//  MovieKuno
//
//  Created by Amiel Jireh Cordova on 1/28/21.
//

import Foundation

struct OnboardingPanelModel {
    var image: String
    var title: String
    var subTitle: String
}

extension OnboardingPanelModel {
    static private let subText = """
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                 """
    static var data: [OnboardingPanelModel] = [
        OnboardingPanelModel(image: "onboardingpanel", title: "WELCOME TO MOVIEKUNO", subTitle: ""),
        OnboardingPanelModel(image: "onboardingpanel", title: "SECOND PANEL", subTitle: ""),
        OnboardingPanelModel(image: "onboardingpanel", title: "THIRD PANEL", subTitle: "")
    ]
}
