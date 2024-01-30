//
//  PopularPeopleList.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/29/24.
//



import Foundation

// MARK: - Welcome
struct PopularPeopleList: Codable {
    let page: Int
    let results: [People]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct People: Codable, Identifiable {
    let adult: Bool
    let id: Int
    let name, originalName: String
    let mediaType: ResultMediaType
    let popularity: Double
    let gender: Int
    let knownForDepartment: KnownForDepartment
    let profilePath: String
    let knownFor: [KnownFor]

    enum CodingKeys: String, CodingKey {
        case adult, id, name
        case originalName = "original_name"
        case mediaType = "media_type"
        case popularity, gender
        case knownForDepartment = "known_for_department"
        case profilePath = "profile_path"
        case knownFor = "known_for"
    }
}

// MARK: - KnownFor
struct KnownFor: Codable, Identifiable {
    let adult: Bool
    let backdropPath: String
    let id: Int
    let title: String
    let originalLanguage: OriginalLanguage
    let originalTitle, overview, posterPath: String
    let mediaType: KnownForMediaType
    let genreIDS: [Int]
    let popularity: Double
    let releaseDate: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case id, title
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case genreIDS = "genre_ids"
        case popularity
        case releaseDate = "release_date"
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}

enum KnownForMediaType: String, Codable {
    case movie = "movie"
}

enum OriginalLanguage: String, Codable {
    case en = "en"
    case fr = "fr"
    case it = "it"
    case ko = "ko"
}

enum KnownForDepartment: String, Codable {
    case acting = "Acting"
    case directing = "Directing"
}

enum ResultMediaType: String, Codable {
    case person = "person"
}


//import Foundation
//
//struct PopularPeopleList: Codable {
//    let page: Int
//    let results: [People]
//    let totalPages, totalResults: Int
//
//    enum CodingKeys: String, CodingKey {
//        case page, results
//        case totalPages = "total_pages"
//        case totalResults = "total_results"
//    }
//}
//
//struct People: Codable, Identifiable {
//    let adult: Bool
//    let gender, id: Int
//    let knownForDepartment: KnownForDepartment
//    let name, originalName: String
//    let popularity: Double
//    let profilePath: String
//    let knownFor: [KnownFor]
//
//    enum CodingKeys: String, CodingKey {
//        case adult, gender, id
//        case knownForDepartment = "known_for_department"
//        case name
//        case originalName = "original_name"
//        case popularity
//        case profilePath = "profile_path"
//        case knownFor = "known_for"
//    }
//}
//
//struct KnownFor: Codable, Identifiable {
//    let adult: Bool
//    let backdropPath: String
//    let id: Int
//    let name: String?
//    let originalLanguage: OriginalLanguage
//    let originalName: String?
//    let overview, posterPath: String
//    let mediaType: MediaType
//    let genreIDS: [Int]
//    let popularity: Double
//    let firstAirDate: String
//    let voteAverage: Double
//    let voteCount: Int
//    let originCountry: [String]
//    let title, originalTitle, releaseDate: String?
//    let video: Bool?
//
//    enum CodingKeys: String, CodingKey {
//        case adult
//        case backdropPath = "backdrop_path"
//        case id, name
//        case originalLanguage = "original_language"
//        case originalName = "original_name"
//        case overview
//        case posterPath = "poster_path"
//        case mediaType = "media_type"
//        case genreIDS = "genre_ids"
//        case popularity
//        case firstAirDate = "first_air_date"
//        case voteAverage = "vote_average"
//        case voteCount = "vote_count"
//        case originCountry = "origin_country"
//        case title
//        case originalTitle = "original_title"
//        case releaseDate = "release_date"
//        case video
//    }
//}
//
//enum MediaType: String, Codable {
//    case movie = "movie"
//    case tv = "tv"
//}
//
//enum OriginalLanguage: String, Codable {
//    case en = "en"
//}
//
//enum KnownForDepartment: String, Codable {
//    case acting = "Acting"
//    case crew = "Crew"
//}
