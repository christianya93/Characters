//
//  CharacterCollectionView.swift
//  MarvelComics
//
//  Created by Christian Aguirre Rivera on 4/03/22.
//

import UIKit

class CharacterCollectionView: UICollectionView {
    init(frame: CGRect = .zero,
         layout: CharacterCollectionViewFlowLayout = .init()) {
        super.init(frame: frame, collectionViewLayout: layout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
