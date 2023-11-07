//
//  ViewController.swift
//  codingTask
//
//  Created by Oleg Kasarin on 07/11/2023.
//

import UIKit

protocol HomeViewControllerProtocol: AnyObject {
    var viewController: UIViewController { get }
}

final class HomeViewController: UICollectionViewController {
    var presenter: HomePresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        presenter?.didTriggerViewLoad()
    }


}

// MARK: - HomeViewControllerProtocol

extension HomeViewController: HomeViewControllerProtocol {
    var viewController: UIViewController {
        self
    }
}

// MARK: - Private

private extension HomeViewController {
    func setup() {
        collectionView.register(
            GenresCollectionViewCell.nib(),
            forCellWithReuseIdentifier: String(describing: GenresCollectionViewCell.self)
        )
    }
}
