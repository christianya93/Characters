//
//  ErrorMessage.swift
//  MarvelComics
//
//  Created by Christian Aguirre Rivera on 3/03/22.
//

import Foundation

struct ErrorMessage: Swift.Error, Equatable {
    let message: String
    
    init(_ message: String) {
        self.message = message
    }
}
