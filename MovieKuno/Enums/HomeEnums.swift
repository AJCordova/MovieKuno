//
//  HomeEnums.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/21/21.
//

import Foundation

enum HomeMenu: CaseIterable {
    case latestMovie
    case popularMovie
    case latestTVShow
    case popularTVShow
    case popularPeople
    
    func menuLabel() -> String {
        switch self {
        case .latestMovie:
            return L10n.latestMovie
        case .latestTVShow:
            return L10n.latestTvShow
        case .popularMovie:
            return L10n.popularMovie
        case .popularTVShow:
            return L10n.popularTvShow
        case .popularPeople:
            return L10n.popularPeople
        }
    }
}
