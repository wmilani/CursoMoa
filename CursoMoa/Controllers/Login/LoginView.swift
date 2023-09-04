//
//  LoginView.swift
//  CursoMoa
//
//  Created by Weslley Milani on 14/08/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    //MARK: - Properts
    lazy var emailField = LabelTextDefault(labelText: LocalizableString.email.localize(),
                                           placeholder: LocalizableString.emailPlaceHolder.localize(),
                                           font: UIFont.systemFont(ofSize: 14),
                                           keyboardType: .emailAddress,
                                           returnKeyType: .next)

    lazy var passwordField = LabelTextDefault(labelText: LocalizableString.password.localize(), placeholder:                                          LocalizableString.passwordPlaceHolder.localize())
        
        let buttonOpen = ButtonDefault(title:LocalizableString.buttonOpen.localize())
        let buttonRegister = ButtonDefault(title: LocalizableString.buttonRegister.localize())
    
    //MARK: - Inits
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .viewBackground
        
        setupVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupVisualElements() {
        setUpFieldEmail()
        setUpFieldPassword()
        setUpButtonOpen()
        setUpButtonRegister()
    }

    private func setUpFieldEmail(){
        self.addSubview(emailField)
        
        NSLayoutConstraint.activate([
            emailField.topAnchor.constraint(equalTo: self.topAnchor, constant: 60),
            emailField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            emailField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12)
        ])
    }
    
    private func setUpFieldPassword(){
        self.addSubview(passwordField)
        
        NSLayoutConstraint.activate([
            passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20),
            passwordField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            passwordField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12)
        ])
    }
        
    private func setUpButtonOpen(){
        self.addSubview(buttonOpen)
        
        NSLayoutConstraint.activate([
            buttonOpen.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 30),
            buttonOpen.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            buttonOpen.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12)
        ])
    }
    
    private func setUpButtonRegister(){
        self.addSubview(buttonRegister)
        
        NSLayoutConstraint.activate([
            buttonRegister.topAnchor.constraint(equalTo: buttonOpen.bottomAnchor, constant: 30),
            buttonRegister.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            buttonRegister.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
        ])
    }
}
