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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        //Create a task from the outlet information
        
        //Accessing the appdelegate so we can use coredata
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = tasknameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Pop back to original screen
        
        navigationController!.popViewController(animated: true)
        
    }

 

}
