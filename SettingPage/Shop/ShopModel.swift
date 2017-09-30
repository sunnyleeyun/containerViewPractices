//
//  ShopModel.swift
//  SettingPage
//
//  Created by Mac on 2017/9/30.
//  Copyright © 2017年 Mac. All rights reserved.
//

import Foundation
import UIKit

class ShopModel { //視Json資料調整
    // 0
    var storeLogoUrl: String?
    var storeName: String?
    
    //1
    var product = [ProductModel]()
    
    //2
    var shipmentDetail: String?
    
    init?(data: Data)
    {
        
    }
    
}
class ProductModel {
    //1
    var itemImageUrl: String?
    var itemName: String?
    var itemOption: String?
    
    init(json: [String: Any]) {
        self.itemImageUrl = json[""] as? String
        self.itemName = json[""] as? String
        self.itemOption = json[""] as? String
    }
}
