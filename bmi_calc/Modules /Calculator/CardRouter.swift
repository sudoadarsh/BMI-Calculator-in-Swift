//
//  CardRouter.swift
//  bmi_calc
//
//  Created by Adarsh Sudarsanan on 24/11/22.
//

import Foundation
import UIKit

class CardRouter {
    
    // MARK: - Properties.
    
    // A weak reference to the [CardViewController].
    weak var vc: CardViewController!
    
    // MARK: - Public methods.
    
    func pushToContinueView() {
        let resultVc: ResultViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResultID") as! ResultViewController
        
        // Setting up values in the [ResultViewController].
        resultVc.setup(isMale: false, height: Int(vc.heightOutlet.text ?? "171") ?? 171, weight: Int(vc.weightOutlet.text ?? "65") ?? 65, age: Int(vc.ageOutlet.text ?? "25") ?? 25)
        
        vc.navigationController?.pushViewController(resultVc, animated: true)
    }
}
