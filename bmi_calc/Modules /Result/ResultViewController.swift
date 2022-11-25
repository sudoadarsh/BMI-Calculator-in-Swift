//
//  ResultViewController.swift
//  bmi_calc
//
//  Created by Adarsh Sudarsanan on 24/11/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: - Properties.
    
    var height: Int!
    var isMale: Bool!
    var weight: Int!
    var age: Int!
    
    // MARK: - Outlets.
    
    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var calculation: UILabel!
    
    @IBOutlet weak var remark: UILabel!
    
    // MARK: - View life cycle events.
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        beautify()
        
        calculateBMI()
        
    }
    
    // MARK: - Methods.
    
    func setup(isMale: Bool, height: Int, weight: Int, age: Int) {
        self.isMale = isMale
        self.height = height
        self.weight = weight
        self.age = age
        
    }
    
    // Beautify the background view.
    private func beautify() {
        self.backgroundView.layer.masksToBounds = false
        self.backgroundView.layer.cornerRadius = 20.0
    }
    
    // Calculate the BMI.
    private func calculateBMI() {
        let heightSq: Double = Double((height*height)/10000)
        let answer = Double(weight)/(heightSq)
        
        calculation.text = String(answer)
        remark.text = remark(bmi:answer)
    }
    
    // To give a remark.
    private func remark(bmi: Double) -> String{
        switch bmi {
        case 0...18.5:
            return "Underweight"
        case 18.5...24.9:
            return "Healthy"
        case 25.0...100:
            return "Overweight"
        default:
            return "Can't decide"
        }
    }

}
