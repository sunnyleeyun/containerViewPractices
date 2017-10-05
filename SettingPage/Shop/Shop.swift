//
//  ShopModel.swift
//  SettingPage
//
//  Created by Mac on 2017/9/30.
//  Copyright © 2017年 Mac. All rights reserved.
//

import Foundation
import UIKit

public struct ShopCartList {
    var list: [Shop]
}

public struct Shop {
    let seller: Seller
    let products = [Product]()
    let shipment: Shipment
}

struct Seller {
    //0
    let storeLogoUrl: String
    let storeName: String
}
struct Product {
    //1
    let itemImageUrl: String
    let itemName: String
    let itemOption: String
}
struct Shipment {
    let shipmentDetail: String
}
