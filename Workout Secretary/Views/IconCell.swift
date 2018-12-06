//
//  IconCell.swift
//  Workout Secretary
//
//  Created by Chen Wang on 12/5/18.
//  Copyright © 2018 utopia incubator. All rights reserved.
//

import UIKit
import SnapKit

class IconCell: UICollectionViewCell {
    
    var icon : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addButton()
        addConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func addButton(){
        icon = UIImageView()
        icon.backgroundColor = UIColor.orange
        icon.image = UIImage(named: "img1")
        self.addSubview(icon)
    }
    
    func addConstraints() {
        icon.snp.makeConstraints { (make) in
            make.left.right.top.bottom.equalTo(0)
        }
        
    }
    
    

}
