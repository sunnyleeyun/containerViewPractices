//
//  ContainerViewController.swift
//  SettingPage
//
//  Created by Mac on 2017/9/26.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    //Manipulating container views
    fileprivate weak var viewController : UIViewController!
    //Keeping track of containerViews
    fileprivate var containerViewObjects = Dictionary<String,UIViewController>()
    
    fileprivate var segueIdentifier : String!

    /*Identifier For First Container SubView*/
    @IBInspectable internal var firstLinkedSubView : String!

    
    /** Specifies which ever container view is on the front */
    open var currentViewController : UIViewController{
        get {
            return self.viewController
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    open override func viewDidAppear(_ animated: Bool) {
        if let identifier = firstLinkedSubView{
            segueIdentifierReceivedFromParent(identifier)
        }
    }
    
    
    func segueIdentifierReceivedFromParent(_ identifier: String){
        
        
        
        self.segueIdentifier = identifier
        self.performSegue(withIdentifier: self.segueIdentifier, sender: nil)
        
        
        
    }
    
    
    
    
    override open func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier{
            
            
            //Remove Container View
            if viewController != nil{
                
                
                viewController.view.removeFromSuperview()
                viewController = nil
                
                
                
            }
            //Add to dictionary if isn't already there
            if ((self.containerViewObjects[self.segueIdentifier] == nil)){
                viewController = segue.destination
                self.containerViewObjects[self.segueIdentifier] = viewController
                
            }else{
                for (key, value) in self.containerViewObjects{
                    
                    if key == self.segueIdentifier{
                        
                        viewController = value
                        
                        
                    }
                    
                }
                
                
            }
            
            self.addChildViewController(viewController)
            viewController.view.frame = CGRect(x: 0,y: 0, width: self.view.frame.width,height: self.view.frame.height)
            self.view.addSubview(viewController.view)
            viewController.didMove(toParentViewController: self)
            
            
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
