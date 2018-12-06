//
//  SetTitleCell.swift
//  Workout Secretary
//
//  Created by Chen Wang on 11/25/18.
//  Copyright © 2018 utopia incubator. All rights reserved.
//

import UIKit

class SetTitleCell: UITableViewCell {

    var topIcon: UIButton!
    var setTitle: UILabel!
    
    
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
        topIcon = UIButton()
        topIcon.setImage(UIImage(named: "img1"), for: .normal)
        topIcon.contentMode = UIView.ContentMode.scaleToFill
        topIcon.addTarget(self, action: #selector(topIconPressed), for: .touchUpInside)
        self.addSubview(topIcon)
        
        setTitle = UILabel()
        setTitle.text = "Title"
        setTitle.backgroundColor = UIColor.orange
        self.addSubview(setTitle)
    }
    
    @objc private func topIconPressed(){
        print("topIconPressed")
        if let parentVC = getFirstViewController(){
            parentVC.navigationController?.pushViewController(ChooseIconPageController(), animated: true)
        }
    }
    
    
    
    private func addConstrain(){
        topIcon.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.center.x)
            make.top.equalTo(10)
            make.height.width.equalTo(50)
        }
        
        setTitle.snp.makeConstraints { (make) in
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


extension UIView{
    
    func getFirstViewController()->UIViewController?{
        
        for view in sequence(first: self.superview, next: {$0?.superview}){
            
            if let responder = view?.next{
                
                if responder.isKind(of: UIViewController.self){
                    
                    return responder as? UIViewController
                }
            }
        }
        return nil
    }
}
