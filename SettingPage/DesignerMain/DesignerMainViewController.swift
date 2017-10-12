//
//  DesignerMainViewController.swift
//  SettingPage
//
//  Created by Mac on 2017/10/12.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit
import SnapKit

class DesignerMainViewController: UIViewController {
  
  // UI
  var viewBackgroud: UIView!
  var fakeLogo: UIView! //var logoImage: UIImageView!
  var logoLabel: UILabel!
  var detailLabel: UILabel!
  var productNumber: UILabel!
  var productLabel: UILabel!
  var ratingNumber: UILabel!
  var ratingLabel: UILabel!
  var savedNumber: UILabel!
  var savedLabel: UILabel!
  
  var OrdersLabel: UILabel!
  var OrdersButton: UIButton!
  var tableView1: UITableView!
  
  var top_constraint: Constraint?

  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setNavigationBar()
    
    view.backgroundColor = .init(hexString: "EBEBF1")
    configureUI()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  private func setNavigationBar(){
    print("!23")
    
    self.title = "Looking For"
    navigationItem.title = "Looking for"
  }
  
  func configureUI(){
    configureViewMain()
  }
  
  func configureViewMain(){
    self.viewBackgroud = UIView()
    self.viewBackgroud.backgroundColor = UIColor.white
    //self.viewBackgroud.layer.cornerRadius = 10
    viewBackgroud.anchor(to: view)
    self.viewBackgroud.snp.makeConstraints { (make) in
      make.left.equalTo(20)
      make.right.equalTo(-20)
      make.top.equalTo(self.view).offset(40)
      //self.top_constraint = make.centerY.equalTo(self.view).constraint
      make.height.equalTo(80)
    }
    
    self.fakeLogo = UIView()
    self.fakeLogo.backgroundColor = UIColor.brown
    fakeLogo.anchor(to: viewBackgroud)
    self.fakeLogo.snp.makeConstraints { (make) in
      make.left.equalTo(10)
      make.height.equalTo(20)
      make.width.equalTo(80)
      make.centerY.equalTo(self.viewBackgroud)
    }
    
    
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destinationViewController.
   // Pass the selected object to the new view controller.
   }
   */
  
}
