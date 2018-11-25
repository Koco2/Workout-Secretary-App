//
//  SetCell.swift
//  Workout Secretary
//
//  Created by Chen Wang on 11/24/18.
//  Copyright © 2018 utopia incubator. All rights reserved.
//

import UIKit
import SnapKit

class SetCell: UITableViewCell {

    var leftIcon: UIImageView!
    var descri: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //调用布局的方法
        self.setupViews()
        self.addConstrain()
    }
    
    private func setupViews(){
        leftIcon = UIImageView()
        leftIcon.image = UIImage(named: "img1")
        leftIcon.contentMode = UIView.ContentMode.scaleToFill
        self.addSubview(leftIcon)
        
        descri = UITextView()
        descri.text = "lkasdjf;lkasjd;lkasdjf;lkasjd;lfkjaslkdjf;laksjdflkajsdl;knxmnvkjnalkurywuieyprioqweknciaheprivnw;bvibwiorpbnpoiebwfpuqnpeoberbpoiwnvpioqpbweuporbfqowueunqoiehpofiqnweopifnlkasdjf;lkasjd;lfkjaslkdjf;laksjdflkajsdl;knxmnvkjnalkurywuieyprioqweknciaheprivnw;bvibwiorpbnpoiebwfpuqnpeoberbpoiwnvpioqpbweuporbfqowueunqoiehpofiqnweopifnlfkjaslkdjf;laksjdflkajsdl;knxmnvkjnalkurywuieyprioqweknciaheprivnw;bvibwiorpbnpoiebwfpuqnpeoberbpoiwnvpioqpbweuporbfqowueunqoiehpofiqnweopifn"
        descri.isScrollEnabled = false
        descri.isEditable = false
        descri.backgroundColor = UIColor.orange
        self.addSubview(descri)
        
        
    }
    
    private func addConstrain(){
        leftIcon.snp.makeConstraints { (make) in
            make.left.equalTo(10)
            make.top.equalTo(10)
            make.bottom.equalTo(-10)
            make.height.width.equalTo(50)
        }
        
        descri.snp.makeConstraints { (make) in
            make.left.equalTo(leftIcon.snp_rightMargin).offset(20)
            make.top.equalTo(10)
            make.bottom.equalTo(-10)
            make.height.equalTo(50)
            make.right.equalTo(-10)
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
