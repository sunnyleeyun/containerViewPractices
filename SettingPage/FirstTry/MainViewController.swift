//
//  MainViewController.swift
//  SettingPage
//
//  Created by Mac on 2017/9/26.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var container: ContainerViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            
            
            container!.segueIdentifierReceivedFromParent("first")
            
        }
        else{
            
            container!.segueIdentifierReceivedFromParent("second")
            
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "container"{
            
            container = segue.destination as! ContainerViewController
            
            
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
