//
//  LoginView.swift
//  CursoMoa
//
//  Created by Weslley Milani on 14/08/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    
    
    //MARK: - Visual Elements
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = LocalizableString.email.localize()
        label.textColor = .labelTextColor
        label.textAlignment = .left
        
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = LocalizableString.emailPlaceHolder.localize()
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.returnKeyType = UIReturnKeyType.next
        textField.font = UIFont.systemFont(ofSize: 13)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
            
       
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = LocalizableString.password.localize()
        label.textColor = .labelTextColor
        label.textAlignment = .left
        
    
      return label
    }()
    
    lazy var passwordTexTField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = LocalizableString.passwordPlaceHolder.localize()
        textField.isSecureTextEntry = true
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.font = UIFont.systemFont(ofSize: 13)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        
        return textField
        
    }()
    
        var buttonOpen = ButtonDefault(title:LocalizableString.buttonOpen.localize())
        var buttonRegister = ButtonDefault(title: LocalizableString.buttonRegister.localize())
    
    
    
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
        setUpLabelEmail()
        setUpTextFieldEmail()
        setUpPasswordLabel()
        setUpPasswordTextField()
        setUpButtonOpen()
        setUpButtonRegister()
        
    }
    
    private func setUpLabelEmail() {
        self.addSubview(emailLabel)
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 60),
            emailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            emailLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
            
        
        ])
    }
    
    private func setUpTextFieldEmail() {
        self.addSubview(emailTextField)
        
        NSLayoutConstraint.activate([
        
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor,constant: 12),
            emailTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            emailTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
            
    
        ])
    }
    
    private func setUpPasswordLabel(){
        self.addSubview(passwordLabel)
        
        NSLayoutConstraint.activate([
        
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            passwordLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12)
        
        ])
        
    }
    
    private func setUpPasswordTextField(){
        self.addSubview(passwordTexTField)
        
        NSLayoutConstraint.activate([
        
            passwordTexTField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 12),
            passwordTexTField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            passwordTexTField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12),
        
        ])
        
    }
    
    private func setUpButtonOpen(){
        self.addSubview(buttonOpen)
        
        NSLayoutConstraint.activate([
            
            buttonOpen.topAnchor.constraint(equalTo: passwordTexTField.bottomAnchor, constant: 30),
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
