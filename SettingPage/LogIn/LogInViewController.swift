//
//  LogInViewController.swift
//  SettingPage
//
//  Created by Mac on 2017/10/3.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

public class LogInViewController: UIViewController, UITextFieldDelegate {

    public override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        
        // Do any additional setup after loading the view.
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public override func updateViewConstraints() {
        textFieldConstraints()
        textFieldConstraintsPlus()
        super.updateViewConstraints()
    }
    
    private func configureUI(){
        mainLogIn()
    }
    
    private func mainLogIn(){
        view.addSubview(textField)
        view.addSubview(textField)
        view.setNeedsUpdateConstraints()

    }

    lazy var textField: UITextField! = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.borderStyle = .roundedRect
        return view
    }()
    
    func textFieldConstraints() {
        // Center Text Field Relative to Page View
        NSLayoutConstraint(
            item: textField,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Width to be 80% of the Width of the Page View
        NSLayoutConstraint(
            item: textField,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.8,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Y Position 10% Down From the Top of the Page View
        NSLayoutConstraint(
            item: textField,
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
            item: textField,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Width to be 80% of the Width of the Page View
        NSLayoutConstraint(
            item: textField,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.8,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Y Position 10% Down From the Top of the Page View
        NSLayoutConstraint(
            item: textField,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.3,
            constant: 0.0)
            .isActive = true
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }

}
