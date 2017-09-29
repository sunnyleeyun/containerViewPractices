//
//  ShopViewController.swift
//  SettingPage
//
//  Created by Mac on 2017/9/29.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

public class ShopViewController: UIViewController {
    
//    struct ShopCartList {
//        private var list: [ShopContent]
//    }
    
    
    private struct ShopContent { // what include within 1 section
        let seller: Seller
        let products: [Product]
        let shipment: Shipment
    }
    
    private var sections = [ShopContent]()

    private var tableView: UITableView!
    
    public var sectionCount: Int{
        return 2
    }
    
    public enum ShopSettingSection: Int{ // how many sections
        case aa = 0
        case bb = 1
    }
    /*
    public var sellerSize: CGSize{
        return CGSize(width: view.bounds.width, height: 50)
    }
    public var productSize: CGSize{
        return CGSize(width: view.bounds.width, height: 100)
    }
    public var shipmentSize: CGSize{
        return CGSize(width: view.bounds.width, height: 50)
    }*/
 
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
        // Do any additional setup after loading the view.
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func configureUI(){
        configureTableView()
    }

    private func configureTableView(){
        tableView = UITableView(frame: self.view.bounds)
        tableView.backgroundColor = .white
        
        
        // register
        tableView.register(cellTypes: [Seller.self, Product.self, Shipment.self])
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.anchor(to: view)
        
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
extension ShopViewController: UITableViewDataSource{
    
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return sectionCount
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
//        switch section {
//        case ShopSettingSection.aa.rawValue:
//            return 1
//        case ShopSettingSection.bb.rawValue:
//            return 1
//
//        default:
//            fatalError()
//        }
        
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case ShopSettingSection.aa.rawValue:
            if indexPath.row == 0{
                let cell = tableView.dequeueReusableCell(with: Seller.self, for: indexPath)
                return cell
            } else if indexPath.row == 1{
                let cell = tableView.dequeueReusableCell(with: Product.self, for: indexPath)
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(with: Shipment.self, for: indexPath)
                return cell
            }
        case ShopSettingSection.bb.rawValue:
            if indexPath.row == 0{
                let cell = tableView.dequeueReusableCell(with: Seller.self, for: indexPath)
                return cell
            } else if indexPath.row == 1{
                let cell = tableView.dequeueReusableCell(with: Product.self, for: indexPath)
                return cell
            } else {
                let cell = tableView.dequeueReusableCell(with: Shipment.self, for: indexPath)
                return cell
            }
            
        default:
            fatalError()
        }
        
    }
    
    
    
}
extension ShopViewController: UITableViewDelegate{
    
}




