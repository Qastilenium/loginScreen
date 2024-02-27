//
//  ViewModel.swift
//  MVVMSimpleProj
//
//  Created by Ilryc Marokonen on 27.02.2024.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    
    var statusColor = Dynamic(UIColor.clear)
    
    func userButtonTapped(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Log in failed"
            statusColor.value = .red
        } else {
            statusText.value = "You successfully logged in"
            statusColor.value = .green
        }
    }
}
