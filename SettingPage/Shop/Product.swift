//
//  Product.swift
//  SettingPage
//
//  Created by Mac on 2017/9/29.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

class Product: UITableViewCell {
    
    @IBOutlet public weak var checkButton: UIButton?
    @IBOutlet public weak var productImageView: UIImageView?
    @IBOutlet public weak var productNameLabel: UILabel?
    @IBOutlet public weak var productDetailLabel: UILabel?

    var item: ProductModel?{
        didSet{
            guard let item = item else { return }
            productImageView?.image = UIImage(named: item.itemImageUrl!)
            productNameLabel?.text = item.itemName
            productDetailLabel?.text = item.itemOption

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
