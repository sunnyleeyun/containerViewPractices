//
//  MainViewController.swift
//  SettingPage
//
//  Created by Mac on 2017/10/5.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit
import SnapKit

public class DetailViewController: UIViewController {
  
  private var tableView: UITableView!
  public enum DetailViewSection: Int{
    case ProductPic = 0
    case ProductDet = 1
    case ProductSRF = 2
    case Other = 3
  }
  
  
  //lazy var box = UIView()
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    configureUI()
    
//    box.backgroundColor = .yellow
//    self.view.addSubview(box)
//    box.snp.makeConstraints { (make) -> Void in
//      make.width.height.equalTo(50)
//      make.center.equalTo(self.view)
//    }
  }
  
  
  public override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  
  private func configureUI(){
    configureTableView()
  }
  private func configureTableView(){
    tableView = UITableView(frame: self.view.bounds)
    tableView.backgroundColor = .white
    
    // register
    tableView.register(cellTypes: [ProductPictureTableViewCell.self, ProductDetailsTableViewCell.self, SizeRateFitTableViewCell.self, OtherTableViewCell.self])
    
    tableView.delegate = self
    tableView.dataSource = self
    
    tableView.rowHeight = 80.0
    
    tableView.anchor(to: view)
    
  }
  
}
// MARK: - UITableViewDelegate
extension DetailViewController: UITableViewDelegate{
  
}

// MARK: - UITableViewDataSource
extension DetailViewController: UITableViewDataSource{
  public func numberOfSections(in tableView: UITableView) -> Int {
    return 4
  }
  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    switch indexPath.section{
      
    case DetailViewSection.ProductPic.rawValue:
      let cell = tableView.dequeueReusableCell(with: ProductPictureTableViewCell.self, for: indexPath)
      return cell
    case DetailViewSection.ProductDet.rawValue:
      let cell = tableView.dequeueReusableCell(with: ProductDetailsTableViewCell.self, for: indexPath)
      return cell
    case DetailViewSection.ProductSRF.rawValue:
      let cell = tableView.dequeueReusableCell(with: SizeRateFitTableViewCell.self, for: indexPath)
      return cell
    case DetailViewSection.Other.rawValue:
      let cell = tableView.dequeueReusableCell(with: OtherTableViewCell.self, for: indexPath)
      return cell
    default: fatalError()
    }
  }
}
