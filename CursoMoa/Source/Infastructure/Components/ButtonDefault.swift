//
//  ButtonDefault.swift
//  CursoMoa
//
//  Created by Weslley Milani on 25/08/23.
//

import Foundation
import UIKit

class ButtonDefault: UIButton {
    
    init (title: String) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        
        initDefault()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func initDefault(){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .buttonBackground
        self.setTitleColor(UIColor.buttonTextColor, for: .normal)
        self.layer.cornerRadius = ConstantsComponents.ButtonCornerRadius
        
    }
    
    
}

