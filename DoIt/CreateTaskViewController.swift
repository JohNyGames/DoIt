//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by John Nyberg on 7/12/17.
//  Copyright © 2017 JohnnyAPPleseed. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var tasknameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        //Create a task from the outlet information
        
        let task = Task()
        task.name = tasknameTextField.text!
        task.important = importantSwitch.isOn
        
        //Add new task to array in previous viewcontroller
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }

 

}
