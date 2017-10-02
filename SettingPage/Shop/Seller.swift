//
//  ShopTableViewCell.swift
//  SettingPage
//
//  Created by Mac on 2017/9/29.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

class Seller: UITableViewCell {

    @IBOutlet public weak var checkButton: UIButton?
    @IBOutlet public weak var storeImageView: UIImageView?
    @IBOutlet public weak var storeNameLabel: UILabel?

    var item: ShopViewModelItem?{
        didSet{
            guard let item = item as? ShopSellerViewModelItem else { return }
            storeImageView?.image = UIImage(named: item.storeLogoUrl)
            storeNameLabel?.text = item.storeName
            
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
