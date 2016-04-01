//
//  ExecMember.swift
//  YoungNatsV6
//
//  Created by Thomas Horrobin on 1/04/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//

import Foundation

class ExecMember {
    
    var possition: String
    var exec_name: String
    var full_name: String
    
    init(possition: String, exec_name: String, full_name: String){
        self.possition = possition
        self.exec_name = exec_name
        self.full_name = full_name
    }
    
    init(member: NSDictionary){
        self.possition = member["possition"] as! String!
        self.exec_name = member["exec_name"] as! String!
        self.full_name = member["full_name"] as! String!
    }
    
}