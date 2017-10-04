//
//  LogInViewController.swift
//  SettingPage
//
//  Created by Mac on 2017/10/3.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

public class LogInViewController: UIViewController, LogInViewModelDelegate, UITextFieldDelegate {

    var model: LogInViewModel!
    
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()

        model = LogInViewModel(username: "", password: "")
        model.delegate = self
        
        view.backgroundColor = .init(hexString: "2A2846")//C15062
        configureUI()
        
        // Do any additional setup after loading the view.
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    public func showInvalidation(){
        // Alert
        print("Account is not valid.")
    }
    
    public func logInDone() {
        print("Successful or whatever")
    }
    
    @objc func LogInPressed(_ sender: AnyObject){
        
        print("first time")
        model.username = username.text!
        model.password = password.text!
        model.handleLogInPressed()
    }
    
    public override func updateViewConstraints() {
        textFieldConstraints()
        textFieldConstraintsPlus()
        buttonConstraints()
        super.updateViewConstraints()
    }
    
    private func configureUI(){
        mainLogIn()
    }
    
    private func mainLogIn(){
        username.anchor(to: view)
        password.anchor(to: view)
        logIn.anchor(to: view)
        
        view.setNeedsUpdateConstraints()

    }

    lazy var username: UITextField! = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.borderStyle = .roundedRect
        view.placeholder = "userName"
        return view
    }()
    lazy var password: UITextField! = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.borderStyle = .roundedRect
        view.placeholder = "password"
        return view
    }()
    lazy var logIn: UIButton! = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(LogInViewController.LogInPressed(_:)), for: .touchUpInside)
        view.setTitle("Press Me!", for: .normal)
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    
    // auto layout
    func textFieldConstraints() {
        // Center Text Field Relative to Page View
        NSLayoutConstraint(
            item: username,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Width to be 80% of the Width of the Page View
        NSLayoutConstraint(
            item: username,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.8,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Y Position 10% Down From the Top of the Page View
        NSLayoutConstraint(
            item: username,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.1,
            constant: 0.0)
            .isActive = true
    }
    func textFieldConstraintsPlus() {
        // Center Text Field Relative to Page View
        NSLayoutConstraint(
            item: password,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Width to be 80% of the Width of the Page View
        NSLayoutConstraint(
            item: password,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.8,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Y Position 10% Down From the Top of the Page View
        NSLayoutConstraint(
            item: password,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.2,
            constant: 0.0)
            .isActive = true
    }
    func buttonPressed(sender: UIButton) {
        print("button tapped")
    }
    
    func buttonConstraints() {
        // Center Text Field Relative to Page View
        NSLayoutConstraint(
            item: logIn,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Width to be 80% of the Width of the Page View
        NSLayoutConstraint(
            item: logIn,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.8,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Y Position 10% Down From the Top of the Page View
        NSLayoutConstraint(
            item: logIn,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.4,
            constant: 0.0)
            .isActive = true
    }

}
