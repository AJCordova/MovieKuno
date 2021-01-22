//
//  GenreModel.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/22/21.
//

import Foundation
struct Genres: Codable {
    let genres: [Genre]
}

struct Genre: Codable {
    let id: Int
    let name: String
}
