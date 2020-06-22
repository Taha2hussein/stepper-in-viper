//
//  shared.swift
//  stepper in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
class endPointShared{
//    var valueChanged :Bool
    var Total : Int = 1
//    init(value:Bool){
//        self.valueChanged = value
//    }
    
    func calculateSum(value:Int) -> Int{
        Total = Total + value
        return Total
    }
    func calculateMins(value : Int) -> Int{
        Total = value - 1
        return Total
    }
}
    
