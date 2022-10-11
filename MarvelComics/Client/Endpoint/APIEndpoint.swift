//
//  APIEndpoint.swift
//  MarvelComics
//
//  Created by Christian Aguirre Rivera on 3/03/22.
//

public enum APIEndpoint: String {
    case characters = "/characters"
    
    var value: String {
        return rawValue
    }
}
