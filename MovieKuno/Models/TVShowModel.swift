//
//  TVShowModel.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/22/21.
//

import Foundation

struct TVShowModel: Codable, Hashable {
    let id: Int
    let name: String
    let numberOfSeasons: Int
    let firstAirDate: String
    let voteAverage: Int

    enum CodingKeys: String, CodingKey {
        case id, name
        case firstAirDate = "first_air_date"
        case numberOfSeasons = "number_of_seasons"
        case voteAverage = "vote_average"
    }
}

typealias TVShows = [TVShowModel]
