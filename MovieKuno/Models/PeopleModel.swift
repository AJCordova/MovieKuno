//
//  PeopleModel.swift
//  MovieKuno
//
//  Created by Leah Joy Ylaya on 1/26/21.
//

import Foundation

struct Artists: Codable, Hashable {
    let results: [Actor]
}

struct Actor: Codable, Hashable {
    let id: Int
    let knownFor: [KnownFor]
    let name: String
}

struct KnownFor: Codable, Hashable {
    let name: String?

    enum CodingKeys: String, CodingKey {
        case name
    }
}

extension Artists {
    static let actor = Actor(id: 1, knownFor: [knownFor], name: "Dakota Johnson")
    static let knownFor = KnownFor(name: "Suspiria")
    static let arrayTemplate = Artists(results: [Actor](repeating: Artists.actor, count: 5))
}
