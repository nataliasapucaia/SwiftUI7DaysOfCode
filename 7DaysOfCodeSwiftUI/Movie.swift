//
//  Movie.swift
//  7DaysOfCodeSwiftUI
//
//  Created by Natália Sapucaia on 21/03/23.
//

import Foundation

public struct Movie: Identifiable {
    public let id: Int
    let title: String
    let releaseDate: String
    let image: String?
    let overview: String
    let voteAverage: Double
}
