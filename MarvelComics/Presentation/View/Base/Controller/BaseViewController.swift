//
//  BaseViewController.swift
//  MarvelComics
//
//  Created by Christian Aguirre Rivera on 4/03/22.
//

import UIKit

class BaseViewController: UIViewController {
    let errorView = ErrorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showError(message: String) {
        errorView.message = message
        errorView.setUp()
        errorView.isHidden = false
    }
}
