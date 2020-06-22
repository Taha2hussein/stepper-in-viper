//
//  HomeInteractor.swift
//  stepper in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
protocol HomeUseCases {
//    func onValuechanged(value:Bool) ->Void
    func calculate(type:calculationCase , value:Int) -> Int
}
class HomeInteractor{
    
}
extension HomeInteractor : HomeUseCases{
    func calculate(type: calculationCase, value: Int) -> Int{
        
        if type == calculationCase.plus{
            let sharedInstance =  endPointShared()
            let returnvalue = sharedInstance.calculateSum(value: value)
            return returnvalue
        }
        else{
        let sharedInstance =  endPointShared()
        let returnvalue = sharedInstance.calculateMins(value: value)
        return returnvalue
        }
    }
    
//    func onValuechanged(value: Bool) {
//        let endPointRefrence = endPointShared(value: value)
//        print(endPointRefrence.valueChanged)
//
//    }
//
    
}
