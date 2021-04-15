//
//  Livro.swift
//  MyLibrary
//
//  Created by Beatriz Castro on 11/04/21.
//

import Foundation

struct Livro: Codable {
    var title: String
    var isbn: String?
    var pageCount: Int
    var thumbnailUrl: URL?
    var shortDescription: String?
    var longDescription: String?
    var authors: [String]
    var categories: [String]
    var publishedDate: Date?
    var quantity: Int
}
