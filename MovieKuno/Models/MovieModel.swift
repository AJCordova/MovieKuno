//
//  MovieModel.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/21/21.
//

import Foundation

/** Note:
 Add config for the decoder decoder.keyCondingSomething = .convertSnakeCaseSomething
 */
struct Movie: Codable, Hashable {
    let id: Int
    let title: String
    let posterURL: String?
    let voteAverage: String
    let releaseDate: String
    let genreIds: [Int]
}

typealias Movies = [Movie]
