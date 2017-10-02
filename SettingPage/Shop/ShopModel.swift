//
//  ShopModel.swift
//  SettingPage
//
//  Created by Mac on 2017/9/30.
//  Copyright © 2017年 Mac. All rights reserved.
//

import Foundation
import UIKit

struct ShopModel { //視Json資料調整
    /*
    let seller: Seller
    let products: [Product]
    let shipment: Shipment
 */
    // 0
    var storeLogoUrl: String?
    var storeName: String?
    
    //1
    var products = [ProductModel]()
    
    //2
    var shipmentDetail: String?
    
    init?(data: Data)
    {
        // alamofire here?
        
        do {
            if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any], let body = json["data"] as? [String: Any] {
                self.storeLogoUrl = body["storeLogoUrl"] as? String
                self.storeName = body["storeName"] as? String
                
                if let products = body["products"] as? [[String: Any]] {
                    self.products = products.map { ProductModel(json: $0) }
                }
                
                self.shipmentDetail = body["shipmentDetail"] as? String

                
            }
        } catch {
            print("Error deserializing JSON: \(error)")
            return nil
        }
        
    }
    
}
class ProductModel {
    //1
    var itemImageUrl: String?
    var itemName: String?
    var itemOption: String?
    
    init(json: [String: Any]) {
        self.itemImageUrl = json["itemImageUrl"] as? String
        self.itemName = json["itemName"] as? String
        self.itemOption = json["itemOption"] as? String
    }
}
