//
//  SelfDrivingCar.swift
//  classesandobjects
//
//  Created by TestMac on 1/15/19.
//  Copyright © 2019 tagmegreen. All rights reserved.
//

import Foundation

class SelfDrivingCar: Car {
    var destination: String?
    
    override func drive(){
        super.drive()
        if( destination != nil ){
            print(" Driving to " + destination!);
        }
        
    }
}
