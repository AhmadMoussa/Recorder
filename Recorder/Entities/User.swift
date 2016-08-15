//
//  User.swift
//  Recorder
//
//  Created by Christine Baertl on 15/08/16.
//  Copyright © 2016 AhmadMoussa. All rights reserved.
//

import UIKit

class User: NSObject {
    
    var profilePicture: UIImage!
    var backgroundPicture: UIImage!
    var userName: String!
    var userDescription: String!
    
    override init(){
        self.userName = "TestUser"
        self.userDescription = "i ma the gratist"
    }

}
