//
//  BaseCharacterDetailViewModel.swift
//  MarvelComics
//
//  Created by Christian Aguirre Rivera on 8/03/22.
//

import Foundation

protocol BaseCharacterDetailViewModel {
    var character: CharacterModel { get set }
    var copyright: String { get set }
    func fetchCharacter(by id: Int)
}
