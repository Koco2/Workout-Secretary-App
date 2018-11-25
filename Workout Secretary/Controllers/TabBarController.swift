//
//  TabBarController.swift
//  Workout Secretary
//
//  Created by Chen Wang on 11/24/18.
//  Copyright © 2018 utopia incubator. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addChilds()
        
    }
    
    
    private func addChildVC(childVC: UIViewController, childTitle: String, imageName: String, selectedImageName:String)
    {
        let navigation = UINavigationController(rootViewController: childVC)
        navigation.navigationBar.tintColor = UIColor.white
        navigation.navigationBar.barTintColor = UIColor.gray
        childVC.title = childTitle
        //childVC.tabBarItem.tag = 1
        childVC.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        //childVC.tabBarItem.selectedImage = UIImage(named: selectedImageName)?.withRenderingMode(.alwaysOriginal)
        self.addChild(navigation)
    }
    
    
    
    func addChilds(){
        let workoutPageController = WorkoutPageController()
        let setPageController = SetPageController()
        let thridPageContoller = ThirdPageController()
        let fourthPageController = FourthPageViewController()
        self.addChildVC(childVC: workoutPageController, childTitle: "workout", imageName: "null", selectedImageName: "null")
        self.addChildVC(childVC: setPageController, childTitle: "set", imageName: "null", selectedImageName: "null")
        self.addChildVC(childVC: thridPageContoller, childTitle: "3", imageName: "null", selectedImageName: "null")
        self.addChildVC(childVC: fourthPageController, childTitle: "4", imageName: "null", selectedImageName: "null")
        
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
