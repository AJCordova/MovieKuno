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
            return "Latest Movie"
        case .latestTVShow:
            return "Latest TV Show"
        case .popularMovie:
            return "Popular Movie"
        case .popularTVShow:
            return "Popular TV Show"
        case .popularPeople:
            return "Popular People"
        }
    }
}
