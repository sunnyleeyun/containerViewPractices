//
//  ShopViewModel.swift
//  SettingPage
//
//  Created by Mac on 2017/9/30.
//  Copyright © 2017年 Mac. All rights reserved.
//

import Foundation

enum ShopViewModelItemType {
    case Seller
    case Product
    case Shipment
}
protocol ShopViewModelItem {
    var type: ShopViewModelItemType { get }
    var rowCount: Int { get }
}

class ShopViewModel: NSObject{
    var items = [ShopViewModelItem]()
    
    // ???
    
    override init() {
        super.init()
        
    }
}

class ShopSellerViewModelItem: ShopViewModelItem { // row 0
    
    var type: ShopViewModelItemType {
        return .Seller
    }
    
    var storeLogoUrl: String
    var storeName: String
    
    init(storeLogoUrl: String, storeName: String)
    {
        self.storeLogoUrl = storeLogoUrl
        self.storeName = storeName
    }
}



class ShopProductViewModelItem: ShopViewModelItem{ // row 1
    
    var type: ShopViewModelItemType {
        return .Product
    }
    
    var products: [Product]
    var rowCount: Int {
        return products.count
    }
    
    init(products: [Product]) {
        self.products = products
    }

    
}

class ShopShipmentViewModelItem: ShopViewModelItem { // row 2
    
    var type: ShopViewModelItemType {
        return .Shipment
    }
    
    var shipmentDetail: String
    
    init(shipmentDetail: String)
    {
        self.shipmentDetail = shipmentDetail
    }
}


extension ShopSellerViewModelItem {
    var rowCount: Int {
        return 1
    }
}

extension ShopShipmentViewModelItem {
    var rowCount: Int {
        return 1
    }
}



/*
 class ShopMainViewModelItem: ShopViewModelItem {
 
 // 0
 var storeLogoUrl: String
 var storeName: String
 
 //1
 var itemImageUrl: String
 var itemName: String
 var itemOption: String
 
 //2
 var shipmentDetail: String
 
 
 init(storeLogoUrl: String, storeName: String, itemImageUrl: String, itemName: String, itemOption: String, shipmentDetail: String) {
 self.storeLogoUrl = storeLogoUrl
 self.storeName = storeName
 self.itemImageUrl = itemImageUrl
 self.itemName = itemName
 self.itemOption = itemOption
 self.shipmentDetail = shipmentDetail
 }
 }
 */
