//
//  HomePresenter.swift
//  codingTask
//
//  Created by Oleg Kasarin on 07/11/2023.
//

import Foundation

protocol HomePresenterProtocol {
    func didTriggerViewLoad()
}

final class HomePresenter {
    weak var controller: HomeViewControllerProtocol?
    
    init(
        controller: HomeViewControllerProtocol? = nil
    ) {
        self.controller = controller
    }
}

// MARK: - HomePresenterProtocol

extension HomePresenter: HomePresenterProtocol {
    func didTriggerViewLoad() {
        // fetch
    }
}
