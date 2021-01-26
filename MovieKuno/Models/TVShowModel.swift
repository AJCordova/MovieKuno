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

let tempTvShows: TVShows = [
    TVShowModel(id: 1,
                name: "How I Met Your Mother",
                numberOfSeasons: 7,
                firstAirDate: "2001",
                voteAverage: 2),
    TVShowModel(id: 2,
                name: "F.R.I.E.N.D.S",
                numberOfSeasons: 10,
                firstAirDate: "2001",
                voteAverage: 3),
    TVShowModel(id: 2,
                name: "Big Bang Theory",
                numberOfSeasons: 10,
                firstAirDate: "2001",
                voteAverage: 3)
]


