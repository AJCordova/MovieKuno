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
    static private let description = L10n.showcaseDescriptionPlaceholder
    static var data: [ShowcasePanelModel] = [
        ShowcasePanelModel(image: "onboardingpanel", title: description, subTitle: ""),
        ShowcasePanelModel(image: "onboardingpanel", title: description, subTitle: ""),
        ShowcasePanelModel(image: "onboardingpanel", title: description, subTitle: "")
    ]
}
