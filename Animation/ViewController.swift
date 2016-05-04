//
//  ViewController.swift
//  Animation
//
//  Created by Kyle Goslan on 03/05/2016.
//  Copyright © 2016 Kyle Goslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var names = ["Name", "Name", "Name", "Name", "Name", "Name", "Name", "Name", "Name", "Name", "Name", "Name", "Name", "Name", "Name", "Name", "Name"]
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
        
        let titleLabel = cell.viewWithTag(1) as! UILabel
        titleLabel.text = names[indexPath.row]
        
        return cell
        
    }
    
}

extension ViewController: UITableViewDelegate {
    
}
