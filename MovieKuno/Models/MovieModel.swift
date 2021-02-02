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

extension Movie {
    static let template = Movie(id: 1,
                                title: "Harry Potter and the Philosopher Stone",
                                posterURL: "",
                                voteAverage: "4.5",
                                releaseDate: "21 November 200",
                                genreIds: [1, 2, 3])
    static let arrayTemplate = Movies(repeating: Movie.template, count: 5)
}

typealias Movies = [Movie]
