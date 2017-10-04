//
//  LogInViewModel.swift
//  SettingPage
//
//  Created by Mac on 2017/10/3.
//  Copyright © 2017年 Mac. All rights reserved.
//

import Foundation

public class LogInViewModel{
    
    var username: String = ""
    var password: String = ""
    public weak var delegate: LogInViewModelDelegate?
    
    public init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    public func handleLogInPressed(){
        if username == "" || password == ""{
            delegate?.showInvalidation()
        }else{
            delegate?.logInDone()
        }
    }
    
    
    
    
}
public protocol LogInViewModelDelegate: class {
    func showInvalidation()
    func logInDone()
    
}
