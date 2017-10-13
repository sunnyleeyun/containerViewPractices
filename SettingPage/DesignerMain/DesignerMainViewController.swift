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
  var verticalLine: UIView!
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
  var goStoreButton: UIButton!
  
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
    viewBackgroud.anchor(to: view)
    self.viewBackgroud.snp.makeConstraints { (make) in
      make.left.equalTo(20)
      make.right.equalTo(-20)
      make.top.equalTo(self.view).offset(40)
      make.height.equalTo(120)
    }
    
    self.fakeLogo = UIView()
    self.fakeLogo.backgroundColor = UIColor.brown
    fakeLogo.anchor(to: viewBackgroud)
    self.fakeLogo.snp.makeConstraints { (make) in
      make.left.equalTo(10)
      make.top.equalTo(10)
      make.height.equalTo(30)
      make.width.equalTo(90)
    }
    
    self.logoLabel = UILabel()
    self.logoLabel.text = "Stay Tuned"
    self.logoLabel.textColor = UIColor.black
    self.logoLabel.font = UIFont.boldSystemFont(ofSize: logoLabel.font.pointSize)
    self.logoLabel.font = logoLabel.font.withSize(18)
    self.logoLabel.anchor(to: viewBackgroud)
    self.logoLabel.snp.makeConstraints { (make) in
      make.left.equalTo(10)
      make.right.equalTo(-10)
      make.top.equalTo(50)
      make.height.equalTo(30)
    }
    
    self.detailLabel = UILabel()
    self.detailLabel.text = "Hey!"
    self.detailLabel.font = detailLabel.font.withSize(12)
    self.detailLabel.textColor = UIColor.gray
    self.detailLabel.anchor(to: viewBackgroud)
    self.detailLabel.snp.makeConstraints { (make) in
      make.left.equalTo(10)
      make.right.equalTo(-10)
      make.top.equalTo(75)
      make.height.equalTo(30)
    }
    
    self.productNumber = UILabel()
    self.productNumber.text = "100"
    self.productNumber.font = productNumber.font.withSize(18)
    self.productNumber.textColor = UIColor.black
    self.productNumber.font = UIFont.boldSystemFont(ofSize: productNumber.font.pointSize)
    self.productNumber.textAlignment = .center
    self.productNumber.anchor(to: viewBackgroud)
    self.productNumber.snp.makeConstraints { (make) in
      make.leading.greaterThanOrEqualTo(fakeLogo.snp.trailing).offset(30)
      make.top.equalTo(fakeLogo)
      make.width.equalTo(55)
    }
    
    self.productLabel = UILabel()
    self.productLabel.text = "Products"
    self.productLabel.font = productLabel.font.withSize(12)
    self.productLabel.textColor = UIColor.gray
    self.productLabel.textAlignment = .center
    self.productLabel.anchor(to: viewBackgroud)
    self.productLabel.snp.makeConstraints { (make) in
      make.leading.greaterThanOrEqualTo(fakeLogo.snp.trailing).offset(30)
      make.top.equalTo(productNumber.snp.bottom)
      make.width.equalTo(55)
    }
    
    self.ratingNumber = UILabel()
    self.ratingNumber.text = "4.9"
    self.ratingNumber.font = productNumber.font.withSize(18)
    self.ratingNumber.textColor = UIColor.black
    self.ratingNumber.font = UIFont.boldSystemFont(ofSize: ratingNumber.font.pointSize)
    self.ratingNumber.textAlignment = .center
    self.ratingNumber.anchor(to: viewBackgroud)
    self.ratingNumber.snp.makeConstraints { (make) in
      make.leading.equalTo(productNumber.snp.trailing).offset(10)
      make.top.equalTo(fakeLogo)
      make.width.equalTo(55)
    }
    
    self.ratingLabel = UILabel()
    self.ratingLabel.text = "Ratings"
    self.ratingLabel.font = ratingLabel.font.withSize(12)
    self.ratingLabel.textColor = UIColor.gray
    self.ratingLabel.textAlignment = .center
    self.ratingLabel.anchor(to: viewBackgroud)
    self.ratingLabel.snp.makeConstraints { (make) in
      make.leading.equalTo(productLabel.snp.trailing).offset(10)
      make.top.equalTo(ratingNumber.snp.bottom)
      make.width.equalTo(55)
    }
    
    self.savedNumber = UILabel()
    self.savedNumber.text = "100k"
    self.savedNumber.font = savedNumber.font.withSize(18)
    self.savedNumber.textColor = UIColor.black
    self.savedNumber.font = UIFont.boldSystemFont(ofSize: savedNumber.font.pointSize)
    self.savedNumber.textAlignment = .center
    self.savedNumber.anchor(to: viewBackgroud)
    self.savedNumber.snp.makeConstraints { (make) in
      make.leading.equalTo(ratingNumber.snp.trailing).offset(10)
      make.top.equalTo(fakeLogo)
      make.width.equalTo(55)
      make.right.equalTo(-10)
    }
    
    self.savedLabel = UILabel()
    self.savedLabel.text = "Saved"
    self.savedLabel.font = savedLabel.font.withSize(12)
    self.savedLabel.textColor = UIColor.gray
    self.savedLabel.textAlignment = .center
    self.savedLabel.anchor(to: viewBackgroud)
    self.savedLabel.snp.makeConstraints { (make) in
      make.leading.equalTo(ratingLabel.snp.trailing).offset(10)
      make.top.equalTo(savedNumber.snp.bottom)
      make.width.equalTo(55)
      make.right.equalTo(-10)
    }
    
    self.goStoreButton = UIButton()
    self.goStoreButton.setTitle("Go to my store →", for: UIControlState())
    self.goStoreButton.setTitleColor(.init(hexString: "C15062"), for: UIControlState())
    self.goStoreButton.anchor(to: viewBackgroud)
    self.goStoreButton.snp.makeConstraints { (make) in
      make.bottom.equalTo(-10)
      make.right.equalTo(-10)
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
