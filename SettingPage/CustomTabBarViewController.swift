//
//  CustomTabBarViewController.swift
//  SettingPage
//
//  Created by Mac on 2017/10/5.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.delegate = self
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()

  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    
    let tab1 = DesignerMainViewController()
    let tab1BarItem = UITabBarItem(title: "Tab 1", image: UIImage(named: ""), selectedImage: UIImage(named: ""))
    
    tab1.tabBarItem = tab1BarItem
    
    
    let tab2 = LogInViewController()
    
    let tab2BarItem = UITabBarItem(title: "Tab 2", image: UIImage(named: ""), selectedImage: UIImage(named: ""))
    
    tab2.tabBarItem = tab2BarItem
    
    
    let tab3 = IGPersonalSettingPageViewController()
    
    let tab3BarItem = UITabBarItem(title: "Tab 3", image: UIImage(named: ""), selectedImage: UIImage(named: ""))
    
    tab3.tabBarItem = tab3BarItem
    
    self.viewControllers = [tab1, tab2, tab3]
    
    
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

// Mark: - UITabBarControllerDelegate
extension CustomTabBarViewController: UITabBarControllerDelegate{
  func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    print("Selected")

  }
}
