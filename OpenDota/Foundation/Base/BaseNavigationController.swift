//
//  BaseNavigationController.swift
//  OpenDota
//
//  Created by Hendra Halim on 04/12/20.
//

import UIKit

class BaseNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.isTranslucent = false
        self.navigationBar.tintColor = UIColor.riverBed
        self.navigationBar.barTintColor = UIColor.desertStorm
        self.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.riverBed ?? UIColor.black]
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        .darkContent
    }
}
