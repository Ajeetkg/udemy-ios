//
//  car.swift
//  classesandobjects
//
//  Created by TestMac on 1/15/19.
//  Copyright © 2019 tagmegreen. All rights reserved.
//

import Foundation

enum CarType{
    case Sedan
    case Coupe
    case Hatchback
}
class  Car {
    var color = "Black";
    var numberOfSeats = 5;
    var typeOfCar: CarType = .Coupe
    
    init(){
        
    }
    convenience init(customerChoseColor: String) {
        self.init()
        self.color = customerChoseColor
    }
    
    func drive(){
        print("car is moving");
    }
}
