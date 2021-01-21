//
//  MovieModel.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/21/21.
//

import Foundation


struct Movie: Codable {
    let id: Int
    let title: String
    let overview: String
    let originalTitle: String
    let posterURL: String?
    let forAdult: Bool
    let originalLanguage: String
    let popularity: Int
    let voteCount: Int
    let hasVideo: Bool
    let voteAverage: String
    let releaseDate: String
    let vote: String
    let genres: [Int]
    
    enum CodingKeys: String, CodingKey {
        case id, title, overview, vote, popularity
        case originalTitle = "original_title"
        case posterURL = "poster_path"
        case forAdult = "adult"
        case originalLanguage = "original_language"
        case voteCount = "vote_count"
        case hasVideo = "video"
        case voteAverage = "vote_average"
        case releaseDate = "release_date"
        case genres = "genre_ids"
    }
}

typealias Movies = [Movie]
