//
//  MovieModel.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/21/21.
//

import Foundation

#warning("Add config for the decoder decoder.keyCondingSomething = .convertSnakeCaseSomething")
struct Movie: Codable, Hashable {
    let id: Int
    let title: String
    let posterURL: String?
    let voteAverage: String
    let releaseDate: String
    let genreIds: [Int]
}

typealias Movies = [Movie]

var tempMovies: Movies = [
    Movie(id: 1,
          title: "Harry Potter and the Philosopher Stone",
          posterURL: "",
          voteAverage: "4.5",
          releaseDate: "21 November 200",
          genreIds: [1, 2, 3]),
    Movie(id: 2, title: "Despicable Me 3",
          posterURL: "",
          voteAverage: "6.3",
          releaseDate: "14 June 2017",
          genreIds: [1, 2, 3]),
    Movie(id: 3, title: "Monsters University",
          posterURL: "",
          voteAverage: "4.5",
          releaseDate: "26 June 2013",
          genreIds: [1, 2, 3])
]
