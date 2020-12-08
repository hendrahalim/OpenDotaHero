//
//  AppCoordinator.swift
//  OpenDota
//
//  Created by Hendra Halim on 04/12/20.
//

import Foundation
import UIKit

enum AppViewController {
    case hero
}

class AppCoordinator {
    private(set) var navigationController: UINavigationController?
    private let bundle = Bundle(for: AppCoordinator.self)
    
    required init(rootController: AppViewController) {
        navigationController = self.build(rootController: rootController)
    }
    
    private func build(rootController: AppViewController) -> UINavigationController? {
        switch rootController {
        case .hero:
            return HeroListViewControllerBuilder().build(output: self).navigationController
        }
    }
    
    private func showHeroDetail(id: Int) {
        if let heroDetailViewController = HeroDetailViewControllerBuilder().build(output: self, id: id).viewController as? HeroDetailViewController {
            self.navigationController?.pushViewController(heroDetailViewController, animated: true)
        }
    }
}

extension AppCoordinator: HeroListViewModelOutput {
    func didTapHero(id: Int) {
        self.showHeroDetail(id: id)
    }
}

extension AppCoordinator: HeroDetailViewModelOutput {
    func didTapOtherHero(id: Int) {
        self.showHeroDetail(id: id)
    }
    
    
}
