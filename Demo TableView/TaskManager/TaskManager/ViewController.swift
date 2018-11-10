//
//  ViewController.swift
//  TaskManager
//
//  Created by CMSC389Q on 10/1/18.
//  Copyright © 2018 CMSC389Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var taskTable: UITableView!
    @IBOutlet weak var taskOverviewView: UIView!
    @IBOutlet weak var numTaskLabel: UILabel!
    
    var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        taskTable.delegate = self
        taskTable.dataSource = self
        
        taskOverviewView.layer.borderWidth = 1
        taskOverviewView.layer.borderColor = UIColor.blue.cgColor
        
        // Creates and adds Test Tasks to the Array
        let task1: Task = Task(withTitle: "Do MATH241 HW", withCategory: .MATH)
        let task2: Task = Task(withTitle: "Study For ENGL393", withCategory: .ENGLISH)
        let task3: Task = Task(withTitle: "Meetup with study group", withCategory: .SCIENCE)
        let task4: Task = Task(withTitle: "Do take-home exam", withCategory: .MATH)
        let task5: Task = Task(withTitle: "Finish Shakespeare Essay", withCategory: .ENGLISH)
        
        tasks.append(task1)
        tasks.append(task2)
        tasks.append(task3)
        tasks.append(task4)
        tasks.append(task5)
        
        numTaskLabel.text = "\(tasks.count)"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let taskCell: TaskCell = tableView.dequeueReusableCell(withIdentifier: "taskCell") as! TaskCell
        
        taskCell.taskTitleLbl.text = tasks[indexPath.row].title
        switch tasks[indexPath.row].category {
        case .ENGLISH:
            taskCell.categoryMarker.backgroundColor = UIColor.blue
        case .MATH:
            taskCell.categoryMarker.backgroundColor = UIColor.red
        case .SCIENCE:
            taskCell.categoryMarker.backgroundColor = UIColor.green
        }
        
        return taskCell
    }

    @IBAction func didTapAddTask(_ sender: UIButton) {
        tasks.append(Task(withTitle: "Test task", withCategory: .MATH))
        taskTable.reloadData()
        numTaskLabel.text = "\(tasks.count)"
    }
}
