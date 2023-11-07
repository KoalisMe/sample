//
//  HomeAssembly.swift
//  codingTask
//
//  Created by Oleg Kasarin on 07/11/2023.
//

import Foundation
import UIKit

final class HomeAssembly {
    static func homeViewController() -> HomeViewControllerProtocol {
        let controller = HomeViewController()
        let presenter = HomePresenter()
        controller.presenter = presenter
        
        presenter.controller = controller
        
        return controller
    }
}
