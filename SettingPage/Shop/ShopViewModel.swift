//
//  ShopViewModel.swift
//  SettingPage
//
//  Created by Mac on 2017/9/30.
//  Copyright © 2017年 Mac. All rights reserved.
//

import Foundation

protocol ViewModelItem {

    var rowCount: Int { get }

}
class ShopViewModelItem: ViewModelItem {

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

class ShopProductViewModelItem: ViewModelItem{
    var products: [ProductModel]
    var rowCount: Int {
        return products.count
    }
    
    init(products: [ProductModel]) {
        self.products = products
    }

    
}


extension ShopViewModelItem {
    var rowCount: Int {
        return 1
    }
}


