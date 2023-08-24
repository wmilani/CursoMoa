//
//  LoginCoordinator.swift
//  CursoMoa
//
//  Created by Weslley Milani on 14/08/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    
}
