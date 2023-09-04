//
//  LabelTexDefault.swift
//  CursoMoa
//
//  Created by Weslley Milani on 03/09/23.
//

    import Foundation
    import UIKit


    class LabelTextDefault: UIView {
        
        //MARK: Properts
        
        lazy private var label = LabelDefault(title: String.empty)
        lazy private var textField = TextFieldDefault(placeholder: String.empty)
        
        init (labelText: String, placeholder: String) {
            
            super.init(frame: .zero)
            
            self.translatesAutoresizingMaskIntoConstraints = false
            self.label.text = labelText
            self.textField.placeholder = placeholder
            
            setUpVisualElements()
        }
        
        init(labelText: String, placeholder: String, font: UIFont, keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
            
            super.init(frame: .zero)
            

            self.translatesAutoresizingMaskIntoConstraints =  false
            self.label.text = labelText
            self.textField.placeholder = placeholder
            self.textField.font = font
            self.textField.keyboardType = keyboardType
            self.textField.returnKeyType = returnKeyType
            
            setUpVisualElements()
            
        }
        
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setUpVisualElements () {

            self.addSubview(label)
            self.addSubview(textField)
            
            NSLayoutConstraint.activate([
                label.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
                label.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
                label.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
                
                textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8),
                textField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
                textField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
                
                self.bottomAnchor.constraint(equalTo: textField.bottomAnchor)
            
            ])
        }
    }
