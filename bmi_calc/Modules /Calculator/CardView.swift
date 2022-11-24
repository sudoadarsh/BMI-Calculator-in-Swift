//
//  CardViewController.swift
//  bmi_calc
//
//  Created by Adarsh Sudarsanan on 24/11/22.
//

import UIKit

class CardView: UIControl {
    
    // MARK: - Properties.
    var on: Bool = true
    var max: Int = 100
    var min: Int = 0
    var current: Int = 0
    
    // MARK: - Initialise.
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupView()
    }
    
    // MARK: - Methods.
    private func setupView() {
        layer.masksToBounds = false
        layer.cornerRadius = 20.0
    }
    
    func build(max:Int, min:Int, current:Int) {
        self.max = max
        self.min = min
        self.current = current
    }
    
    func increase() {
        if (current < max) {
            current += 1
        }
    }
    
    func decrease() {
        if (current > min) {
            current -= 1
        }
    }

}
