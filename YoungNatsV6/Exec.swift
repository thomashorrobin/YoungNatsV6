//
//  Exec.swift
//  YoungNatsV5
//
//  Created by Thomas Horrobin on 22/02/16.
//  Copyright © 2016 Young Nationals NZ. All rights reserved.
//

import Foundation

class Exec {
    
    var uuid: NSUUID
    var name: String
    
    init(name: String){
        self.uuid = NSUUID()
        self.name = name
    }
    
    init(exec: NSDictionary){
        self.uuid = NSUUID(UUIDString: (exec["Uid"] as! String))!
        self.name = exec["Name"] as! String!
    }
    
}