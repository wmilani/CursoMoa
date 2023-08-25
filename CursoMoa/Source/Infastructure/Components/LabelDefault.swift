//
//  LabelDefault.swift
//  CursoMoa
//
//  Created by Weslley Milani on 25/08/23.
//

import Foundation
import UIKit

class LabelDefault: UILabel {
    init (title: String) {
        super.init(frame: .zero)
        initDefault()
        
        self.text = title
    }
    
    init(title: String, numberOfLines: Int, NSLineBreakMode: NSLineBreakMode) {
        super.init(frame: .zero)
        initDefault()
        
        self.text = title
        self.numberOfLines = numberOfLines
        self.lineBreakMode = lineBreakMode
    }
    
    private func initDefault() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.font = UIFont.systemFont(ofSize: ConstantsComponents.LabelFontSize, weight: .regular)
        self.textColor = .labelTextColor
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
