//
//  ViewController.swift
//  M6_JCW_CurrencyConverter
//
//  Created by user247663 on 2/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    var currencyLogic = CurrencyLogic()
    
    @IBOutlet weak var usdTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func euroSwitch(_ sender: UISwitch) {
        currencyLogic.setEuroSwitch(sender.isOn)
    }
    
    @IBAction func cadSwitch(_ sender: UISwitch) {
        currencyLogic.setCadSwitch(sender.isOn)
    }
    
    @IBAction func yenSwitch(_ sender: UISwitch) {
        currencyLogic.setYenSwitch(sender.isOn)
    }
    
    @IBAction func pesoSwitch(_ sender: UISwitch) {
        currencyLogic.setPesoSwitch(sender.isOn)
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        currencyLogic.setUSD(usdTextfield.text!)
        self.performSegue(withIdentifier: "toResults", sender: self)
    }
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "toResults") {
            let navigation = segue.destination as! ResultsViewController
            navigation.usd = currencyLogic.formatCurrency(currencyLogic.getUSD())
            navigation.euro = currencyLogic.formatCurrency(currencyLogic.calcCurrency(currencyLogic.euroRate))
            navigation.cad = currencyLogic.formatCurrency(currencyLogic.calcCurrency(currencyLogic.cadRate))
            navigation.yen = currencyLogic.formatCurrency(currencyLogic.calcCurrency(currencyLogic.yenRate))
            navigation.peso = currencyLogic.formatCurrency(currencyLogic.calcCurrency(currencyLogic.pesoRate))
            navigation.showEuro = currencyLogic.euro
            navigation.showCad = currencyLogic.cad
            navigation.showYen = currencyLogic.yen
            navigation.showPeso = currencyLogic.peso
        }
        // Pass the selected object to the new view controller.
    }

}

