//
//  CharacterDetailViewController.swift
//  MarvelComics
//
//  Created by Christian Aguirre Rivera on 8/03/22.
//

import UIKit
import SkeletonView

class CharacterDetailViewController: BaseViewController {
    var characterId: Int!
    var viewModel: BaseCharacterDetailViewModel!
    
    let scrollDetail: UIScrollView = UIScrollView(frame: .zero)
    let contentView: UIView = UIView(frame: .zero)
    let thumbnail: UIImageView = UIImageView(frame: .zero)
    let btnClose: UIButton = UIButton(frame: .zero)
    let lblTitle: PaddingLabel = PaddingLabel(frame: .zero)
    let lblDescription: UILabel = UILabel(frame: .zero)
    let separator: UIView = UIView(frame: .zero)
    let lblCopyright: PaddingLabel = PaddingLabel(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        viewModel.fetchCharacter(by: characterId)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(retryfetchCharacter(_:)),
                                               name: .retry,
                                               object: nil)
    }
    
    @objc private func retryfetchCharacter(_ notification: Notification) {
        viewModel.fetchCharacter(by: characterId)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
}

extension CharacterDetailViewController: BaseCharacterDetailViewController {
    func did(change state: ViewState) {
        errorView.isHidden = true
        let gradient = SkeletonGradient(baseColor: .secondary,
                                        secondaryColor: .black)
        switch state {
        case .loading:
            view.startSkeletonAnimation()
            contentView.showAnimatedGradientSkeleton(usingGradient: gradient)
            scrollDetail.isHidden = false
        case .error(let message):
            scrollDetail.isHidden = true
            showError(message: message)
        case .loaded:
            scrollDetail.isHidden = false
            updateView()
            view.stopSkeletonAnimation()
            contentView.hideSkeleton()
        }
    }
}
