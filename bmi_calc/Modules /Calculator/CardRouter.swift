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
        vc.navigationController?.pushViewController(resultVc, animated: true)
    }
}
