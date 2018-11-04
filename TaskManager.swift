//
//  TaskManager.swift
//  Taskun
//
//  Created by Dzmitry Harbatsevich on 11/4/18.
//  Copyright © 2018 None, Inc. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task {
    var name = "Name"
    var desc = "Description"
}

class TaskManager: NSObject {
    var tasks = [task]()
    
//    override init(){
//
//        let tempTasks:NSArray = persistenceHelper.list("Task")
//        for res:AnyObject in tempTasks{
//            tasks.append(Task(name:res.valueForKey("name")as! String,description:res.valueForKey("desc") as! String))
//        }
//    }
    
    func addTask(name:String, desc: String){
        tasks.append(task(name: name, desc: desc))
        
//        var dicTask: Dictionary<String, String> = Dictionary<String,String>()
//        dicTask["name"] = name
//        dicTask["desc"] = desc
        
//        if(PersistenceHelper.save(entity: "Task", parameters: dicTask)){
//        tasks.append(task(name: name, desc:desc))
//        }
    }
    
    func removeTask(index:Int) {
        
        let _:String = tasks[index].name
        tasks.remove(at: index)
        
//        if(persistenceHelper.remove("Task", key: "name", value: value)){
//        entity:             tasks.removeAtIndex(index)
//        }
    }
}
