//
//  Avenger.swift
//  Avengers List
//
//  Created by Logan Cain on 11/1/17.
//  Copyright © 2017 Logan Cain. All rights reserved.
//

import Foundation

public class Avenger {
 
    
    
    var alias: String?
    var name: String?
    var dateJoined: String?
    var imageName: String?

    convenience init( alias: String, name: String, dateJoined: String, imageName: String) {
        self.init()
        
        self.alias = alias
        self.name = name
        self.dateJoined = dateJoined
        self.imageName = imageName
    }
    
}
