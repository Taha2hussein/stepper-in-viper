//
//  HomeViewBuilding.swift
//  stepper in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit
class Homebuilder{
    static func build() -> UIViewController{
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let view = storyBoard.instantiateViewController(identifier: "ViewController")as! ViewController
        
        let router = HomeRouter(view: view)
        let interactor = HomeInteractor()
        let presenter = HomePresenter(interactor: interactor, router: router, view: view)
        view.presenter = presenter
         
        return view
    }
}
