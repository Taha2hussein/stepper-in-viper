//
//  ViewController.swift
//  stepper in Viper
//
//  Created by A on 6/22/20.
//  Copyright © 2020 Taha. All rights reserved.
//

import UIKit

enum calculationCase {
    case plus
    case minus
}
protocol HomeView : class {
    func showStepper() -> (Void)
    func calculate(type:calculationCase) -> Void
    func getTotalValue(value:Int) -> Void
    func hideSteppr() -> Void
}
class ViewController: UIViewController {

    
    @IBOutlet weak var calculationLabel: UILabel!
    @IBOutlet weak var calculationStackView: UIStackView!
    @IBOutlet weak var addToCartOutlet: UIButton!
    
    var presenter : HomePresentation?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func addToCartTapped(_ sender: Any) {
        showStepper()
    }
    
    @IBAction func minusButtonTapped(_ sender: Any) {
        calculate(type:calculationCase.minus)
        print("minus")
    }
    
    @IBAction func plusButtonTapped(_ sender: Any) {
        calculate(type:calculationCase.plus)
       print("plus")
    }
    
    
}

extension ViewController: HomeView{
    func hideSteppr() {
        addToCartOutlet.isHidden = false
        calculationStackView.isHidden = true
    }
    
    func getTotalValue(value: Int) {
        if value < 0{
            hideSteppr()
        }
        else{
        self.calculationLabel.text = "\(value)"
        }
        
    }
    
    
    func showStepper() {
        addToCartOutlet.isHidden = true
        calculationStackView.isHidden = false
//        presenter?.showStepper()
    }
    
    
    func calculate(type:calculationCase) {
        guard let value = calculationLabel.text ,  !value.isEmpty else{return}
        let valueInteger = Int(value)
//        print("valueInteger  \(valueInteger)")
        presenter?.setCalculation(type: type , value: valueInteger!)
       }
    
}
