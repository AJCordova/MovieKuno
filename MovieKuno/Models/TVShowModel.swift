//
//  TVShowModel.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/22/21.
//

import Foundation

#warning("Add config for the decoder decoder.keyCondingSomething = .convertSnakeCaseSomething")
struct TVShowModel: Codable, Hashable {
    let id: Int
    let name: String
    let numberOfSeasons: Int
    let firstAirDate: String
    let voteAverage: Int
}

typealias TVShows = [TVShowModel]


extension TVShowModel {
    static let tvShow = TVShowModel(id: 1,
                                   name: "How I Met Your Mother",
                                   numberOfSeasons: 7,
                                   firstAirDate: "2001",
                                   voteAverage: 2)
    static let arrayTemplate = TVShows(repeating: TVShowModel.tvShow, count: 5)
}


