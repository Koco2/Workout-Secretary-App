//
//  CreateSetPageController.swift
//  Workout Secretary
//
//  Created by Chen Wang on 11/25/18.
//  Copyright © 2018 utopia incubator. All rights reserved.
//

import UIKit
import SnapKit

class CreateSetPageController: UITableViewController {

    
    let setCellId = "SetCell"
    let AddSetCellId = "AddSetCell"
    let SetTitleCellId = "SetTitleCell"

    var SetArray:[SetCell] = Array()
    var item: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        
        tableView.register(SetCell.self, forCellReuseIdentifier: setCellId)
        tableView.register(AddSetCell.self, forCellReuseIdentifier: AddSetCellId)
        tableView.register(SetTitleCell.self, forCellReuseIdentifier: SetTitleCellId)
        editArray()
        addNavItem()
    }

    private func editArray(){
        SetArray.append(SetCell())
        SetArray.append(SetCell())
        SetArray.append(SetCell())
    }
    
    private func addNavItem(){
        item = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveButtonPressed))
        self.navigationItem.rightBarButtonItem = item
    }

    @objc private func saveButtonPressed(){
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SetArray.count+2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let setCell = tableView.dequeueReusableCell(withIdentifier: setCellId, for: indexPath)
        let addSetCell = tableView.dequeueReusableCell(withIdentifier: AddSetCellId, for: indexPath)
        let setTitleCell = tableView.dequeueReusableCell(withIdentifier: SetTitleCellId, for: indexPath)
    
        if(indexPath.row == 0){
            return setTitleCell
        }
        if(indexPath.row <= SetArray.count){
            return setCell
        }
        return addSetCell
        
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
            self.SetArray.remove(at: indexPath.row)
            self.tableView.reloadData()
        }
        delete.backgroundColor = UIColor.red
        
        if(indexPath.row <= SetArray.count && indexPath.row != 0){
            return [delete]
        }
        return []
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row == SetArray.count+1){
            self.navigationController?.pushViewController(SelectionListController(), animated: true)
        }
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
