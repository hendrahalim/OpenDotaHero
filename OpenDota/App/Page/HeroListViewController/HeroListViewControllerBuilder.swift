//
//  HeroListViewControllerBuilder.swift
//  OpenDota
//
//  Created by Hendra Halim on 04/12/20.
//

import UIKit

class HeroListViewControllerBuilder {
    private(set) var navigationController: UINavigationController?
    private(set) var viewController: UIViewController?
    private(set) var viewModel: HeroListViewModel?
    
    func build(output: HeroListViewModelOutput?) -> HeroListViewControllerBuilder {
        let storyboard = UIStoryboard(name: "HeroListViewController", bundle: Bundle(for: HeroListViewController.self))
        guard let navController = storyboard.instantiateViewController(identifier: "HeroListViewController") as? UINavigationController,
              let controller = navController.viewControllers.first as? HeroListViewController else {
            return self
        }
        let viewModel = HeroListViewModel(output: output)
        controller.viewModel = viewModel
        self.navigationController = navController
        self.viewController = controller
        self.viewModel = viewModel
        return self
    }
}
