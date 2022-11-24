//
//  CardViewController.swift
//  bmi_calc
//
//  Created by Adarsh Sudarsanan on 24/11/22.
//

import UIKit

class CardViewController: UIViewController {
    
    // MARK: - Properties.
    
    var router: CardRouter!
    
    // MARK: - Outlets.

    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var femaleCard: CardView!
    @IBOutlet weak var maleCard: CardView!
    @IBOutlet weak var weightCard: CardView!
    @IBOutlet weak var ageCard: CardView!
    @IBOutlet weak var heightOutlet: UILabel!
    @IBOutlet weak var ageOutlet: UILabel!
    @IBOutlet weak var weightOutlet: UILabel!
    
    // MARK: - View life cycle.

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CardConfigurator.instance.configure(viewController: self)

        // Do any additional setup after loading the view.
        initialSetup()
    }
    
    // MARK: - IBActions.
    
    @IBAction func cardTapped(_ sender: Any) {
        toggleColor(card: femaleCard)
        toggleColor(card: maleCard)
    }
    
    @IBAction func heightSliderChanged(_ sender: Any) {
        self.heightOutlet.text = "\(Int(self.sliderOutlet.value))"
        
    }
    
    @IBAction func wIncrease(_ sender: Any) {
        self.weightCard.increase()
        self.weightOutlet.text = String(self.weightCard.current)
    }
    
    @IBAction func wDecrease(_ sender: Any) {
        self.weightCard.decrease()
        self.weightOutlet.text = String(self.weightCard.current)
    }
    
    @IBAction func aIncrease(_ sender: Any) {
        self.ageCard.increase()
        self.ageOutlet.text = String(self.ageCard.current)
    }
    
    @IBAction func aDecrease(_ sender: Any) {
        self.ageCard.decrease()
        self.ageOutlet.text = String(self.ageCard.current)
    }
    
    @IBAction func calculateBMI(_ sender: UIButton) {
        self.router.pushToContinueView()
    }
    
    // MARK: - Methods.
    private func initialSetup() {
        self.maleCard.on = false
        self.maleCard.backgroundColor = ColorC.backgroundCard
        
        self.weightCard.build(max: 300, min: 15, current: 65)
        self.ageCard.build(max: 100, min: 1, current: 25)
        
        self.heightOutlet.text = String(171)
        self.weightOutlet.text = String(self.weightCard.current)
        self.ageOutlet.text = String(self.ageCard.current)
    }
    
    private func toggleColor(card: CardView) {
        card.on = !card.on
        
        card.backgroundColor = card.on ? ColorC.hightLightCard : ColorC.backgroundCard
    }

}
