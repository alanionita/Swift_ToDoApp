//
//  FirstViewController.swift
//  ToDoApp
//
//  Created by Alan Ionita on 30/01/2018.
//  Copyright © 2018 Alan Ionita. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITabBarDelegate, UITableViewDataSource  {

    var list = ["buy milk", "run 5miles", "find Wally", "plant my plants"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (list.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
            cell.textLabel?.text = list[indexPath.row]
            return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            self.list.remove(at: indexPath.row)
            myTableView.reloadData()
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

