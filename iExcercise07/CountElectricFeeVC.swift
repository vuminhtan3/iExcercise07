//
//  CountElectricFeeVC.swift
//  iExcercise07
//
//  Created by Minh Tan Vu on 06/05/2023.
//

import UIKit

class CountElectricFeeVC: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var countButton: UIButton!
    @IBOutlet weak var quantity1: UILabel!
    @IBOutlet weak var quantity2: UILabel!
    @IBOutlet weak var quantity3: UILabel!
    @IBOutlet weak var quantity4: UILabel!
    @IBOutlet weak var quantity5: UILabel!
    @IBOutlet weak var quantity6: UILabel!
    @IBOutlet weak var amount1: UILabel!
    @IBOutlet weak var amount2: UILabel!
    @IBOutlet weak var amount3: UILabel!
    @IBOutlet weak var amount4: UILabel!
    @IBOutlet weak var amount5: UILabel!
    @IBOutlet weak var amount6: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tax: UILabel!
    @IBOutlet weak var totalAddTax: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
    }

    @IBAction func countButtonPressed(_ sender: UIButton) {
        setupUI()
        countFee()
        
    }
    
    func setupUI() {
        countButton.layer.cornerRadius = 20
        
        quantity1.text = "0"
        quantity2.text = "0"
        quantity3.text = "0"
        quantity4.text = "0"
        quantity5.text = "0"
        quantity6.text = "0"
        amount1.text = "0"
        amount2.text = "0"
        amount3.text = "0"
        amount4.text = "0"
        amount5.text = "0"
        amount6.text = "0"
        
        totalAmount.text = "0"
        tax.text = "0"
        totalAddTax.text = "0"
    }
    
    func countFee() {
        var quantity1Number: Int
        var quantity2Number: Int
        var quantity3Number: Int
        var quantity4Number: Int
        var quantity5Number: Int
        var quantity6Number: Int
        var amount1Number: Int = 0
        var amount2Number: Int = 0
        var amount3Number: Int = 0
        var amount4Number: Int = 0
        var amount5Number: Int = 0
        var amount6Number: Int = 0
        
        
        guard let inputNumber = Int(numberTextField.text!) else {
            return
        }
        
        if inputNumber >= 0 && inputNumber <= 50 {
            quantity1Number = inputNumber
            amount1Number = quantity1Number * 1678
            quantity1.text = String(quantity1Number)
            amount1.text = formatCurrency(amount1Number)
        } else if inputNumber <= 100 {
            quantity1Number = 50
            quantity2Number = inputNumber - 50
            amount1Number = quantity1Number * 1678
            amount2Number = quantity2Number * 1734
            quantity1.text = String(quantity1Number)
            quantity2.text = String(quantity2Number)
            amount1.text = formatCurrency(amount1Number)
            amount2.text = formatCurrency(amount2Number)
        } else if inputNumber <= 200 {
            quantity1Number = 50
            quantity2Number = 50
            quantity3Number = inputNumber - 100
            amount1Number = quantity1Number * 1678
            amount2Number = quantity2Number * 1734
            amount3Number = quantity3Number * 2014
            quantity1.text = String(quantity1Number)
            quantity2.text = String(quantity2Number)
            quantity3.text = String(quantity3Number)
            amount1.text = formatCurrency(amount1Number)
            amount2.text = formatCurrency(amount2Number)
            amount3.text = formatCurrency(amount3Number)
        } else if inputNumber <= 300 {
            quantity1Number = 50
            quantity2Number = 50
            quantity3Number = 100
            quantity4Number = inputNumber - 200
            amount1Number = quantity1Number * 1678
            amount2Number = quantity2Number * 1734
            amount3Number = quantity3Number * 2014
            amount4Number = quantity4Number * 2536
            quantity1.text = String(quantity1Number)
            quantity2.text = String(quantity2Number)
            quantity3.text = String(quantity3Number)
            quantity4.text = String(quantity4Number)
            amount1.text = formatCurrency(amount1Number)
            amount2.text = formatCurrency(amount2Number)
            amount3.text = formatCurrency(amount3Number)
            amount4.text = formatCurrency(amount4Number)
        } else if inputNumber <= 400 {
            quantity1Number = 50
            quantity2Number = 50
            quantity3Number = 100
            quantity4Number = 100
            quantity5Number = inputNumber - 300
            amount1Number = quantity1Number * 1678
            amount2Number = quantity2Number * 1734
            amount3Number = quantity3Number * 2014
            amount4Number = quantity4Number * 2536
            amount5Number = quantity5Number * 2834
            quantity1.text = String(quantity1Number)
            quantity2.text = String(quantity2Number)
            quantity3.text = String(quantity3Number)
            quantity4.text = String(quantity4Number)
            quantity5.text = String(quantity5Number)
            amount1.text = formatCurrency(amount1Number)
            amount2.text = formatCurrency(amount2Number)
            amount3.text = formatCurrency(amount3Number)
            amount4.text = formatCurrency(amount4Number)
            amount5.text = formatCurrency(amount5Number)
        } else if inputNumber > 400 {
            quantity1Number = 50
            quantity2Number = 50
            quantity3Number = 100
            quantity4Number = 100
            quantity5Number = 100
            quantity6Number = inputNumber - 400
            amount1Number = quantity1Number * 1678
            amount2Number = quantity2Number * 1734
            amount3Number = quantity3Number * 2014
            amount4Number = quantity4Number * 2536
            amount5Number = quantity5Number * 2834
            amount6Number = quantity6Number * 2927
            quantity1.text = String(quantity1Number)
            quantity2.text = String(quantity2Number)
            quantity3.text = String(quantity3Number)
            quantity4.text = String(quantity4Number)
            quantity5.text = String(quantity5Number)
            quantity6.text = String(quantity6Number)
            amount1.text = formatCurrency(amount1Number)
            amount2.text = formatCurrency(amount2Number)
            amount3.text = formatCurrency(amount3Number)
            amount4.text = formatCurrency(amount4Number)
            amount5.text = formatCurrency(amount5Number)
            amount6.text = formatCurrency(amount6Number)

        }
        
        let totalAmountNumber = amount1Number + amount2Number + amount3Number + amount4Number + amount5Number + amount6Number
        let taxNumber: Double = Double(totalAmountNumber) * 0.1
        let totalAddTaxNumber = totalAmountNumber + Int(taxNumber)
        totalAmount.text = formatCurrency(totalAmountNumber)
        tax.text = formatCurrency(Int(taxNumber))
        totalAddTax.text = formatCurrency(totalAddTaxNumber)
        
    }
    
    func formatCurrency(_ number: Int) -> String {
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "vi_VN")
        formatter.numberStyle = .currency
        if let formattedNumber = formatter.string(from: number as NSNumber) {
            return formattedNumber
        }
        return ""
    }
    
    /*
    func formatNumber(_ number: Int) -> String {
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "vi_VN")
        formatter.numberStyle = .decimal
        if let formattedNumber = formatter.string(from: number as NSNumber) {
            return formattedNumber
        }
        return ""
    }
     */
    
}
