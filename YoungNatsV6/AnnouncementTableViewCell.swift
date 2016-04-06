//
//  AnnouncementTableViewCell.swift
//  YoungNatsV6
//
//  Created by Thomas Horrobin on 1/04/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//

import UIKit

class AnnouncementTableViewCell: UITableViewCell {
    
    @IBOutlet weak var Message: UILabel!
    @IBOutlet weak var ExecName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
