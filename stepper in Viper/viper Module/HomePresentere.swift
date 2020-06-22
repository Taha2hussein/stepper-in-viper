//
//  HomePresentere.swift
//  stepper in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
protocol HomePresentation {
//    func showStepper() -> Void
    func setCalculation(type:calculationCase,value:Int) -> Void
}
class HomePresenter{
    
    var router : HomeRouting
    weak var view : HomeView?
    var interactor : HomeUseCases
    init(interactor : HomeUseCases , router : HomeRouting , view:HomeView) {
        self.router = router
        self.view = view
        self.interactor = interactor
    }
}
extension HomePresenter : HomePresentation{

    
  
//    func showStepper() {
////        interactor.onValuechanged(value: true)
//    }
    func setCalculation(type:calculationCase,value: Int) {
       let totalValue =  interactor.calculate(type: type, value: value)
       
        view?.getTotalValue(value: totalValue)
    }
      
    
    
    
}
