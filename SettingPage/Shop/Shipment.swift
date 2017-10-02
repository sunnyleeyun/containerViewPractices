//
//  Shipment.swift
//  SettingPage
//
//  Created by Mac on 2017/9/29.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

class Shipment: UITableViewCell {
    
    @IBOutlet public weak var shipmentDetailLabel: UILabel?
    
    var item: ShopViewModelItem?{
        didSet{
            guard let item = item as? ShopShipmentViewModelItem else { return }
            shipmentDetailLabel?.text = item.shipmentDetail
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
