//
//  MockObjects.swift
//  iMoviesFlix
//
//  Created by Nikhil Lalam on 1/26/24.
//

import Foundation

var mockMovie = Movie(adult: false, backdropPath: "/kXfqcdQKsToO0OUXHcrrNCHDBzO.jpg", genreIDS: [18, 80], id: 278, originalLanguage: "en", originalTitle: "The Shawshank Redemption", overview: "The Shawshank Redemption", popularity: 5.0, posterPath: "/kXfqcdQKsToO0OUXHcrrNCHDBzO.jpg" , releaseDate: "10/01/1994", title: "Money Heist", video: false, voteAverage: 10.0, voteCount: 500)
//
//var mockKnownFor = KnownFor(adult: false, backdropPath: "/8ZTVqvKDQ8emSGUEMjsS4yHAwrp.jpg", id: 27205, name: "Inception", originalLanguage: OriginalLanguage.en, originalName: "Inception", overview: "Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: \"inception\", the implantation of another person's idea into a target's subconscious.", posterPath: "/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg", mediaType: KnownForMediaType.movie, genreIDS: [
//    28,
//    878,
//    12
//  ], popularity: 99.725, firstAirDate: "2010-07-15", voteAverage:  8.4, voteCount: 35162, originCountry: ["In"], title: "Inception", originalTitle: "Inception", releaseDate: "2010-07-15", video: true)
//
//var mockPeople = [People(adult: false, id: 1, name: 27205, originalName: KnownForDepartment.acting, mediaType: "Nikhil", popularity: "Lalam", gender: 10.0, knownForDepartment: "/8ZTVqvKDQ8emSGUEMjsS4yHAwrp.jpg", profilePath: [mockKnownFor])]

var mockKnownFor = [KnownFor(adult:false , backdropPath: "/8ZTVqvKDQ8emSGUEMjsS4yHAwrp.jpg", id: 27205, title: "Inception", originalLanguage: OriginalLanguage.en, originalTitle: "Inception", overview: "Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: \"inception\", the implantation of another person's idea into a target's subconscious.", posterPath: "/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg", mediaType: KnownForMediaType.movie, genreIDS: [
        28,
        878,
        12
], popularity: 99.725, releaseDate: "2010-07-15", video: true, voteAverage: 8.4, voteCount: 35162)]

var mockPeople = [People(adult: false, id: 27205, name: "Nikhil", originalName: "Lalam", mediaType: ResultMediaType.person, popularity: 10.0, gender: 1, knownForDepartment: KnownForDepartment.acting, profilePath: "/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg", knownFor: mockKnownFor)]
