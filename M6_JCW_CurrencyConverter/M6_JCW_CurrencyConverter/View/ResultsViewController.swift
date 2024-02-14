//
//  ResultsViewController.swift
//  M6_JCW_CurrencyConverter
//
//  Created by user247663 on 2/12/24.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var usd : String = ""
    var euro : String = ""
    var cad : String = ""
    var yen : String = ""
    var peso : String = ""
    var showEuro : Bool = true
    var showCad : Bool = true
    var showYen : Bool = true
    var showPeso : Bool = true
    
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var cadLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!
    
    @IBOutlet weak var euroSV: UIStackView!
    @IBOutlet weak var cadSV: UIStackView!
    @IBOutlet weak var yenSV: UIStackView!
    @IBOutlet weak var pesoSV: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        euroSV.isHidden = !showEuro
        cadSV.isHidden = !showCad
        yenSV.isHidden = !showYen
        pesoSV.isHidden = !showPeso
        
        usdLabel.text = usd
        euroLabel.text = euro
        cadLabel.text = cad
        yenLabel.text = yen
        pesoLabel.text = peso
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
