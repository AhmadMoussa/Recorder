//
//  RecordingTableViewCell.swift
//  Recorder
//
//  Created by Christine Baertl on 13/08/16.
//  Copyright © 2016 AhmadMoussa. All rights reserved.
//

import UIKit

class RecordingTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var modificationDateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
