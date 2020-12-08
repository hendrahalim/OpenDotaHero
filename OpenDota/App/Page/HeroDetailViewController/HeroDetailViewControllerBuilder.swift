//
//  HeroDetailViewControllerBuilder.swift
//  OpenDota
//
//  Created by Hendra Halim on 06/12/20.
//

import UIKit

class HeroDetailViewControllerBuilder {
    private(set) var navigationController: UINavigationController?
    private(set) var viewController: UIViewController?
    private(set) var viewModel: HeroDetailViewModel?
    
    func build(output: HeroDetailViewModelOutput?, id: Int) -> HeroDetailViewControllerBuilder {
        let storyboard = UIStoryboard(name: "HeroDetailViewController", bundle: Bundle(for: HeroDetailViewController.self))
        guard let navController = storyboard.instantiateViewController(identifier: "HeroDetailViewController") as? UINavigationController,
              let controller = navController.viewControllers.first as? HeroDetailViewController else {
            return self
        }
        let viewModel = HeroDetailViewModel(output: output, id: id)
        controller.viewModel = viewModel
        self.navigationController = navController
        self.viewController = controller
        self.viewModel = viewModel
        return self
    }
}
