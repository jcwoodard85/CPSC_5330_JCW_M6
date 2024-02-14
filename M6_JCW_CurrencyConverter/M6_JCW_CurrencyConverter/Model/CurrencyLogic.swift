//
//  CurrencyLogic.swift
//  M6_JCW_CurrencyConverter
//
//  Created by user247663 on 2/12/24.
//

import Foundation

struct CurrencyLogic {
    
    var usd : Float = 0.00
    var euro : Bool = true
    var cad : Bool = true
    var yen : Bool = true
    var peso : Bool = true
    var euroRate : Float = 0.93 // as of 02/14/2024
    var cadRate : Float = 1.35 // as of 02/14/2024
    var yenRate : Float = 150.60 // as of 02/14/2024
    var pesoRate : Float = 17.09 // as of 02/14/2024
    
    mutating func setEuroSwitch(_ sender: Bool){
        euro = sender
    }
    
    mutating func setCadSwitch(_ sender: Bool){
        cad = sender
    }
    
    mutating func setYenSwitch(_ sender: Bool){
        yen = sender
    }
    
    mutating func setPesoSwitch(_ sender: Bool){
        peso = sender
    }
    
    mutating func setUSD(_ inUSD : String){
        usd = (inUSD as NSString).floatValue
    }
    
    func getUSD() -> String {
        return String(usd)
    }
    
    mutating func calcCurrency(_ exchangeRate : Float) -> String {
        var amount : Float = 0.00
        amount = usd * exchangeRate
        let formatted : String = String(amount)
        return formatted
    }
    
    mutating func formatCurrency (_ inString : String) -> String {
        let amount = Float(inString)!
        let nsAmount = NSNumber(value: amount)
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: nsAmount)!
    }
}
