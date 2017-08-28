//
//  CompleteViewController.swift
//  ToDo List
//
//  Created by Marco Grier on 8/27/17.
//  Copyright © 2017 Marco Grier. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {
    
    //This piece of code links back to the ToDoTableViewController
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo.name
    }

    @IBAction func completeTapped(_ sender: Any) {
        
        var index = 0
        for toDo in previousVC.toDos {
            if toDo.name == selectedToDo.name {
                previousVC.toDos.remove(at: index)
                previousVC.tableView.reloadData()
                navigationController?.popViewController(animated: true)
                break
            }
            index += 1
        }
        
    }
    
}
