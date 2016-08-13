//
//  RecordingTableViewController.swift
//  Recorder
//
//  Created by Christine Baertl on 13/08/16.
//  Copyright © 2016 AhmadMoussa. All rights reserved.
//

import UIKit

class RecordingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("loaded")
    }
    
    // 1
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    // 2
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // 1
        let cell = tableView.dequeueReusableCellWithIdentifier("RecordingTableViewCell", forIndexPath: indexPath) as! RecordingTableViewCell
        
        // 2
        cell.titleLabel.text = "note's title"
        cell.modificationDateLabel.text = "note's modification time"
        
        return cell
    }
    
   
}
