//
//  AddSetCell.swift
//  Workout Secretary
//
//  Created by Chen Wang on 11/25/18.
//  Copyright © 2018 utopia incubator. All rights reserved.
//

import UIKit
import SnapKit

class AddSetCell: UITableViewCell {
    
    var addNewSetLabel:UILabel!

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
        self.addLabel()
        self.addConstraints()
    }
    
    private func addLabel(){
        addNewSetLabel = UILabel()
        addNewSetLabel.text = "Click to Add new Set"
        addNewSetLabel.backgroundColor = UIColor.orange
        self.addSubview(addNewSetLabel)
    }
    
    private func addConstraints(){
        addNewSetLabel.snp.makeConstraints { (make) in
            make.left.top.equalTo(10)
            make.right.bottom.equalTo(-10)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
