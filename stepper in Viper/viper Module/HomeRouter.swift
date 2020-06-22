//
//  HomeRouter.swift
//  stepper in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
protocol HomeRouting {
    
}
class HomeRouter{
    var view : UIViewController
    init(view : UIViewController) {
        self.view = view
    }
}
extension HomeRouter : HomeRouting{
    
}
