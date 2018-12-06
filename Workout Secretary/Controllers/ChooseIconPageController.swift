//
//  ChooseIconPageController.swift
//  Workout Secretary
//
//  Created by Chen Wang on 12/5/18.
//  Copyright © 2018 utopia incubator. All rights reserved.
//

import UIKit

class ChooseIconPageController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    

    var collectionView : UICollectionView!
    var dataArr = NSMutableArray()//数据源
    let width = UIScreen.main.bounds.size.width//获取屏幕宽
    let height = UIScreen.main.bounds.size.height//获取屏幕高
    let identifier = "IconCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    func initView(){
        let layout = UICollectionViewFlowLayout.init()
        layout.itemSize = CGSize(width: 60, height: 60)
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets.init(top: 5, left: 5, bottom: 5, right: 5)
    
        
        collectionView = UICollectionView(frame: CGRect(x: 0.0, y: 0.0, width: self.width, height: self.height), collectionViewLayout: layout)
        //注册一个cell
        collectionView.register(IconCell.self, forCellWithReuseIdentifier:identifier)
        collectionView.backgroundColor = UIColor.white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.white
        //设置每一个cell的宽高
        layout.itemSize = CGSize(width: (width-30)/3, height: (width-30)/3)
        self.view.addSubview(collectionView!)
        
    }
    
    
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! IconCell
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
