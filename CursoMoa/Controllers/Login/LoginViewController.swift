//
//  LoginViewController.swift
//  CursoMoa
//
//  Created by Weslley Milani on 14/08/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
        var mainView = LoginView()
    
    override func loadView() {
        self.view = mainView
        
    }
    
}
