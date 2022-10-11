//
//  ComicModel.swift
//  MarvelComics
//
//  Created by Christian Aguirre Rivera on 3/03/22.
//

import Foundation

class ComicModel: Codable {
    let resourceURI: String
    let name: String
    
    init(resourceURI: String,
         name: String) {
        self.resourceURI = resourceURI
        self.name = name
    }
}
