//
//  EventTableViewCell.swift
//  YoungNatsV6
//
//  Created by Thomas Horrobin on 6/04/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Date: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
