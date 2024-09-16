//
//  Heroes.swift
//  Dragon_Ball_Heroes
//
//  Created by Ana on 16/9/24.
//

import Foundation
enum Hero: String, CaseIterable{
    case goku = "Goku"
    case vegeta = "Vegeta"
    case bulma = "Bulma"
}
extension Hero {
    var imageURL: URL? {
        switch self {
            case .goku:
                URL(string: "https://media.vandalsports.com/master/5-2024/202459164425_1.jpg")
            case .vegeta:
                URL(string: "https://i.blogs.es/b60b7d/vegeta/1366_2000.jpeg")
            case .bulma:
                URL(string: "https://media.tycsports.com/files/2024/07/03/737357/bulma.webp")
        }
    }
}
