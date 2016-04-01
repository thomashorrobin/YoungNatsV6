//
//  Announcement.swift
//  YoungNatsV6
//
//  Created by Thomas Horrobin on 1/04/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//

import Foundation

class Announcement {
    
    var message: String
    var exec_name: String
    
    init(message: String, exec_name: String){
        self.message = message
        self.exec_name = exec_name
    }
    
    init(announcement: NSDictionary){
        self.message = announcement["message"] as! String!
        self.exec_name = announcement["exec_name"] as! String!
    }
    
}