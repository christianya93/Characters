//
//  FileUtility.swift
//  MarvelComics
//
//  Created by Christian Aguirre Rivera on 7/03/22.
//

import Foundation

enum FileNameType: String {
    case characters = "Characters.json"
    case character = "Character.json"
    
    var value: String {
        rawValue
    }
}
