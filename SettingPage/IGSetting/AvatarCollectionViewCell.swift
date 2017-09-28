//
//  AvatarCollectionViewCell.swift
//  SettingPage
//
//  Created by Mac on 2017/9/27.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

public class AvatarCollectionViewCell: UICollectionViewCell {

    public class var preferredSize: CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 140)
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundColor = .green
    }

}
