//
//  CardConfigurator.swift
//  bmi_calc
//
//  Created by Adarsh Sudarsanan on 24/11/22.
//

import Foundation

class CardConfigurator {
    
    // Making the [CardConfigurator] a singleton.
    static let instance = CardConfigurator()
    
    private init() {}
    
    func configure(viewController: CardViewController) {
        let router = CardRouter()
        viewController.router = router
        router.vc = viewController
    }
}
