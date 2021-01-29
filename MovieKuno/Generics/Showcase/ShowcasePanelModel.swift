//
//  ShowcasePanelModel.swift
//  MovieKuno
//
//  Created by Amiel Jireh Cordova on 1/28/21.
//

import Foundation

struct ShowcasePanelModel {
    var image: String
    var title: String
    var subTitle: String
}

extension ShowcasePanelModel {
    static private let subText = """
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                                 """
    static var data: [ShowcasePanelModel] = [
        ShowcasePanelModel(image: "onboardingpanel", title: "WELCOME TO MOVIEKUNO", subTitle: ""),
        ShowcasePanelModel(image: "onboardingpanel", title: "SECOND PANEL", subTitle: ""),
        ShowcasePanelModel(image: "onboardingpanel", title: "THIRD PANEL", subTitle: "")
    ]
}
