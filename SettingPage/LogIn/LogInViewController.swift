//
//  LogInViewController.swift
//  SettingPage
//
//  Created by Mac on 2017/10/3.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit
import SnapKit

public class LogInViewController: UIViewController, UITextFieldDelegate {
  
  var model: LogInViewModel!
  
  // UI
  var username_TextField: UITextField!
  var password_TextField: UITextField!
  var formView: UIView!
  var horizontalLine: UIView!
  var LogIn_Button: UIButton!
  var Logo_Image: UIImageView!
  
  var top_constraint: Constraint?
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    
    model = LogInViewModel(username: "", password: "")
    model.delegate = self
    
    view.backgroundColor = .init(hexString: "2A2846")//C15062
    configureUI()
    
  }
  
  public override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  
  @objc func LogInPressed(_ sender: AnyObject){
    
    model.username = username_TextField.text!
    model.password = password_TextField.text!
    model.handleLogInPressed()
  }
  
  private func configureUI(){
    mainLogIn()
  }
  
  private func mainLogIn(){
    
    let formViewHeight = 90

    // fromView
    self.formView = UIView()
    self.formView.layer.borderWidth = 1
    self.formView.layer.borderColor = UIColor.white.cgColor
    self.formView.backgroundColor = UIColor.init(hexString: "2A2846")
    self.formView.layer.cornerRadius = 10
    formView.anchor(to: view)
    self.formView.snp.makeConstraints { (make) in
      make.left.equalTo(15)
      make.right.equalTo(-15)
      self.top_constraint = make.centerY.equalTo(self.view).constraint
      make.height.equalTo(formViewHeight)
    }
    
    // horizontalLine
    self.horizontalLine = UIView()
    self.horizontalLine.backgroundColor = UIColor.white
    horizontalLine.anchor(to: formView)
    self.horizontalLine.snp.makeConstraints { (make) in
      make.height.equalTo(1)
      make.left.equalTo(0)
      make.right.equalTo(0)
      make.centerY.equalTo(formView)
    }
    
    // username
    self.username_TextField = UITextField()
    self.username_TextField.delegate = self
    self.username_TextField.placeholder = "Username"
    self.username_TextField.text = "Username"
    self.username_TextField.textColor = UIColor.white
    self.username_TextField.tag = 100
    //self.username_TextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
    //self.username_TextField.leftViewMode = UITextFieldViewMode.always
    self.username_TextField.returnKeyType = UIReturnKeyType.continue
    self.username_TextField.anchor(to: formView)
    self.username_TextField.snp.makeConstraints { (make) in
      make.left.equalTo(10)
      make.right.equalTo(-10)
      make.height.equalTo(44)
      make.centerY.equalTo(self.formView).offset(-formViewHeight/4)
    }
    
    // password
    self.password_TextField = UITextField()
    self.password_TextField.delegate = self
    self.password_TextField.placeholder = "Password"
    self.password_TextField.text = "Password"
    self.password_TextField.textColor = UIColor.white
    self.password_TextField.tag = 101
    //self.username_TextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
    //self.username_TextField.leftViewMode = UITextFieldViewMode.always
    self.password_TextField.returnKeyType = UIReturnKeyType.continue
    self.password_TextField.anchor(to: formView)
    self.password_TextField.snp.makeConstraints { (make) in
      make.left.equalTo(10)
      make.right.equalTo(-10)
      make.height.equalTo(44)
      make.centerY.equalTo(self.formView).offset(formViewHeight/4)
    }
    
    self.LogIn_Button = UIButton()
    self.LogIn_Button.setTitle("Log In", for: UIControlState())
    self.LogIn_Button.setTitleColor(UIColor.black,
                                     for: UIControlState())
    self.LogIn_Button.layer.cornerRadius = 10
    self.LogIn_Button.backgroundColor = UIColor.white
    self.LogIn_Button.addTarget(self, action: #selector(LogInPressed),
                                 for: .touchUpInside)
    self.LogIn_Button.anchor(to: self.view)
    self.LogIn_Button.snp.makeConstraints { (make) -> Void in
      make.left.equalTo(15)
      make.top.equalTo(self.formView.snp.bottom).offset(20)
      make.right.equalTo(-15)
      make.height.equalTo(44)
    }
    
  }
  
  
  public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    let tag = textField.tag
    switch tag {
    case 100:
      self.password_TextField.becomeFirstResponder()
    case 101:
      LogInPressed(self)
    default:
      print(textField.text!)
    }
    return true
  }
  
  
}

// MARK: - LogInViewModelDelegate
extension LogInViewController: LogInViewModelDelegate{
  public func showInvalidation(){
    print("Account is not valid.")
  }
  
  public func logInDone() {
    print("Successful or whatever")
  }
}
