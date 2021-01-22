//
//  MovieModel.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/21/21.
//

import Foundation

struct Movie: Codable, Hashable {
    let id: Int
    let title: String
    let posterURL: String?
    let voteAverage: String
    let releaseDate: String
    let genres: [Int]
    
    enum CodingKeys: String, CodingKey {
        case id, title
        case posterURL = "poster_path"
        case voteAverage = "vote_average"
        case releaseDate = "release_date"
        case genres = "genre_ids"
    }
}

typealias Movies = [Movie]
