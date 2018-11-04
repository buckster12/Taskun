//
//  FirstViewController.swift
//  Taskun
//
//  Created by Dzmitry Harbatsevich on 11/4/18.
//  Copyright © 2018 None, Inc. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet var tblTasks : UITableView!

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "Default Tasks")
        
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        
        return cell
    }
    
    private func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCell.EditingStyle, forRowAtIndexPath indexPath: IndexPath){
        if (editingStyle == UITableViewCell.EditingStyle.delete) {
            taskMgr.tasks.remove(at: indexPath.row)
            tblTasks.reloadData()
        }
    }
//
    override func viewWillAppear(_ animated: Bool) {
        self.tblTasks.reloadData()
    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblTasks.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

