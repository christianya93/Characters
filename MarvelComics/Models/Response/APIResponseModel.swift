//
//  APIResponseModel.swift
//  MarvelComics
//
//  Created by Christian Aguirre Rivera on 3/03/22.
//

import Foundation

class APIResponseModel<T: Codable>: Codable {
    let code: Int
    let status: String
    let copyright: String
    let attributionText: String
    let attributionHTML: String
    let etag: String
    let data: APIDataModel<T>
    
    init(code: Int,
         status: String,
         copyright: String,
         attributionText: String,
         attributionHTML: String,
         etag: String,
         data: APIDataModel<T>) {
        self.code = code
        self.status = status
        self.copyright = copyright
        self.attributionText = attributionText
        self.attributionHTML = attributionHTML
        self.etag = etag
        self.data = data
    }
}

// MARK: - Mock
extension APIResponseModel {
    static func mock(filename: String) -> APIResponseModel<CharacterModel> {
        let response: APIResponseModel<CharacterModel> = APIResponseModel<CharacterModel>.JSONToObject(with: filename)
        return response
    }
}
