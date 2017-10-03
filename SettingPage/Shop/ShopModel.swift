//
//  ShopModel.swift
//  SettingPage
//
//  Created by Mac on 2017/9/30.
//  Copyright © 2017年 Mac. All rights reserved.
//

import Foundation
import UIKit

struct ShopCartList {
    var list: [ShopModel]
}
struct Shop {
    let seller: Seller
    let products = [Product]()
    let shipment: Shipment
}

struct Seller {
    //0
    var storeLogoUrl: String
    var storeName: String
}
struct Product {
    //1
    var itemImageUrl: String
    var itemName: String
    var itemOption: String
}
struct Shipment {
    var shipmentDetail: String
}
