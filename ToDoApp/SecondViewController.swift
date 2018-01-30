//
//  SecondViewController.swift
//  ToDoApp
//
//  Created by Alan Ionita on 30/01/2018.
//  Copyright © 2018 Alan Ionita. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    
    
    @IBAction func addItem(_ sender: Any) {
        if(input.text != "")
        {
            list.append(input.text!)
            input.text = ""
            self.tabBarController?.selectedIndex = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

