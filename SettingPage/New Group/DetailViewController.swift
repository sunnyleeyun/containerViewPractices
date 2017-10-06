//
//  MainViewController.swift
//  SettingPage
//
//  Created by Mac on 2017/10/5.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {
  
  private var tableView: UITableView!
  public enum section{
    
  }
  
  lazy var box = UIView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    box.backgroundColor = .yellow
    self.view.addSubview(box)
    box.snp.makeConstraints { (make) -> Void in
      make.width.height.equalTo(50)
      make.center.equalTo(self.view)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
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
