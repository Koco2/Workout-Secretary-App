//
//  SetTitleCell.swift
//  Workout Secretary
//
//  Created by Chen Wang on 11/25/18.
//  Copyright © 2018 utopia incubator. All rights reserved.
//

import UIKit

class SetTitleCell: UITableViewCell {

    var leftIcon: UIImageView!
    var descri: UILabel!
    
    
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
        
        descri = UILabel()
        descri.text = "Title"
        descri.backgroundColor = UIColor.orange
        self.addSubview(descri)
        
        
    }
    
    private func addConstrain(){
        leftIcon.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.center.x)
            make.top.equalTo(10)
            make.height.width.equalTo(50)
        }
        
        descri.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.center.x)
            make.top.equalTo(70)
            make.bottom.equalTo(-10)
            make.height.width.equalTo(50)
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
