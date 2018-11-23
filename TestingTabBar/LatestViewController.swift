//
//  LatestViewController.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 23/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit

class LatestViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
        // Data model: These strings will be the data for the table view cells
        let animals: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat"]
        
        // cell reuse id (cells that scroll out of view can be reused)
        let cellReuseIdentifier = "cell"
        
        // don't forget to hook this up from the storyboard
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Register the table view cell class and its reuse id
            self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
            
            // (optional) include this line if you want to remove the extra empty cell divider lines
            // self.tableView.tableFooterView = UIView()
            
            // This view controller itself will provide the delegate methods and row data for the table view.
            tableView.delegate = self
            tableView.dataSource = self
        }
        
        // number of rows in table view
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.animals.count
        }
        
        // create a cell for each table view row
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            // create a new cell if needed or reuse an old one
            let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
            
            // set the text from the data model
            cell.textLabel?.text = self.animals[indexPath.row]
            
            return cell
        }
        
        // method to run when table view cell is tapped
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print("You tapped cell number \(indexPath.row).")
        }
    
}
