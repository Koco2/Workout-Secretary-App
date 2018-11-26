//
//  ViewController.swift
//  Workout Secretary
//
//  Created by Chen Wang on 11/24/18.
//  Copyright © 2018 utopia incubator. All rights reserved.
//

import UIKit
import SnapKit

class WorkoutPageController: UIViewController {
    
    var addButton = UIButton();
    var startButton = UIButton();

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createAddButton()
        createStartButton()
        addConstrain()
    }
    
    // MARK: creating buttons
    private func createAddButton(){
        addButton = UIButton(type: .roundedRect)
        addButton.backgroundColor = UIColor.red
        addButton.setTitle("Add", for: .normal)
        self.view.addSubview(addButton);
        addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
    }
    
    private func createStartButton(){
        startButton = UIButton(type: .roundedRect)
        startButton.backgroundColor = UIColor.orange
        startButton.setTitle("start", for: .normal)
        self.view.addSubview(startButton);
        startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
    }
    
    // MARK: button actions
    
    @objc private func addButtonTapped(){
        print("add tapped!")
        self.navigationController?.pushViewController(SetPageController(), animated: true)
    }
    
    @objc private func startButtonTapped(){
        print("start tapped!")
    }
    
    
    
    
    // MARK: setting constrain
    private func addConstrain(){
        addButton.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.centerX.equalTo(self.view.center.x)
            make.centerY.equalTo(self.view.center.y-100)
        }
        
        startButton.snp.makeConstraints { (make) in
            make.width.equalTo(100)
            make.height.equalTo(50)
            make.centerX.equalTo(self.view.center.x)
            make.centerY.equalTo(self.view.center.y+100)
        }
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
