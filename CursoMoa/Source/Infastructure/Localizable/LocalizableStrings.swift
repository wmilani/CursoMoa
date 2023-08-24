//
//  LocalizableStrings.swift
//  CursoMoa
//
//  Created by Weslley Milani on 22/08/23.
//

import Foundation
import UIKit


enum LocalizableString: String {

    case email
    case password
    case buttonOpen
    case buttonRegister
    case emailPlaceHolder
    case passwordPlaceHolder
    
    func localize() -> String {
        rawValue.localizeInCurrentBundle()
    }
}

enum LocalizabelAcessibilityString: String {
    case email
    
    func localize() -> String {
        rawValue.localizeInCurrentBundle(true)
    }
}


extension String {
    func localizeInCurrentBundle(_ accessibility: Bool = false) -> String {
        let path: Bundle = .current
        
        return NSLocalizedString(self, tableName: accessibility ?
                                 "LocalizableLoginAccesibility":
                                 "LoginLocalizable",
                                 bundle: path,
                                 value: String(),
                                 comment: String())
        
    }
}

extension Bundle {
    static var current: Bundle {
        class DummyClass {
            init() {
                
            }
        }
        
        return Bundle(for: DummyClass.self)
    }
}

