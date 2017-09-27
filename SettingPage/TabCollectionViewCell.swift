//
//  TabCollectionViewCell.swift
//  SettingPage
//
//  Created by Mac on 2017/9/27.
//  Copyright © 2017年 Mac. All rights reserved.
//

import UIKit

public protocol TabCollectionViewCellDelegate: class {
    func tabCollectionViewCell(didChangeTo type: IGPersonalSettingPageViewController.DatumDisplayType)
}

public class TabCollectionViewCell: UICollectionViewCell {

    @IBOutlet public weak var smallImageButton: UIButton!
    @IBOutlet public weak var fullImageButton: UIButton!
    
    public weak var delegate: TabCollectionViewCellDelegate?

    public override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundColor = UIColor(hexString: "#e8e8e8")
        
        
        smallImageButton.setTitle("小", for: .normal)
        fullImageButton.setTitle("大", for: .normal)
    }
    
    @IBAction public func smallButtonClicked(button: UIButton) {
        delegate?.tabCollectionViewCell(didChangeTo: .smallPhoto)
    }
    
    @IBAction public func fullButtonClicked(button: UIButton) {
        delegate?.tabCollectionViewCell(didChangeTo: .fullPhoto)
    }
    
    

}
