//
//  BaseViewController.swift
//  OpenDota
//
//  Created by Hendra Halim on 04/12/20.
//

import UIKit
import KRProgressHUD

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showLoading(message: String = "Loading...") {
        KRProgressHUD
            .showOn(self)
            .show(withMessage: message, completion: nil)
    }
    
    func dismissLoading() {
        KRProgressHUD.dismiss()
    }
    
    func showError(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

