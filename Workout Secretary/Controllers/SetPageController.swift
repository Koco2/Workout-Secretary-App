//
//  SetPageController.swift
//  Workout Secretary
//
//  Created by Chen Wang on 11/24/18.
//  Copyright © 2018 utopia incubator. All rights reserved.
//

import UIKit

class SetPageController: UITableViewController {

    
    let setCellId = "SetCell"
    var item : UIBarButtonItem!
    var newsArray:[SetCell] = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.tableView.register(SetCell.self, forCellReuseIdentifier: setCellId)
        //self.setNav()
        
    }

    // MARK: - set Navi
    
//    private func setNav(){
//        item = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(rightButtonPressed))
//
//        self.navigationItem.rightBarButtonItem=item
//
//    }
//
//    @objc private func rightButtonPressed(){
//        if tableView.isEditing == true {
//            tableView.isEditing = false
//        }
//        else
//        {
//            tableView.isEditing = true
//        }
//
//    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: setCellId, for: indexPath)
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .normal, title: "Delete") { action, index in
            print("more button tapped")
        }
        delete.backgroundColor = UIColor.red
        
        let edit = UITableViewRowAction(style: .normal, title: "Edit") { action, index in
            print("favorite button tapped")
        }
        edit.backgroundColor = UIColor.green
        
        
        return [delete, edit]
    }


    
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
 

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    }
 

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
