//
//  AnnouncementViewController.swift
//  YoungNatsV6
//
//  Created by Thomas Horrobin on 9/04/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//

import UIKit

class AnnouncementViewController: UIViewController {
    @IBOutlet weak var AnnouncementMessage: UILabel!
    
    var something = Announcement(message: "New announcement!", exec_name: "LNI")

    override func viewDidLoad() {
         self.AnnouncementMessage.text = self.something.message
    }
    
}
