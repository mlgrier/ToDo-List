//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Marco Grier on 8/27/17.
//  Copyright © 2017 Marco Grier. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    //This piece of code links back to the ToDoTableViewController
    var previousVC = ToDoTableViewController()

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        toDo.name = titleTextField.text!
        toDo.important = importantSwitch.isOn
        
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
        
    }
    
}
