//
//  StoryModel.swift
//  MarvelComics
//
//  Created by Christian Aguirre Rivera on 3/03/22.
//

import Foundation

class StoryModel: Codable {
    let resourceURI: String
    let name: String
    let type: String
    
    init(resourceURI: String,
         name: String,
         type: String) {
        self.resourceURI = resourceURI
        self.name = name
        self.type = type
    }
}
