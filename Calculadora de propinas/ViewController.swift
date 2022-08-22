 //
//  ViewController.swift
//  Calculadora de propinas
//
//  Created by Alumno on 8/19/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var PpropinaS: UISlider!
    @IBOutlet weak var pago: UITextField!
    @IBOutlet weak var Ppropina: UILabel!
    @IBOutlet weak var Tpropina: UILabel!
    @IBOutlet weak var propina: UILabel!
    
    var UIpago = "$ 0.0"
    var UIPpropina = "$ 0.0"
    var UITpropina = Float (0.0);
    var UIpropina = "0%"
    var UIPpropinaS = 0
    var porcentaje = Float(0.0);
    var Pporcentaje = "0.0"
    var TTotal = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBAction func PpropinaS(_ sender: Any) {
        UIpago = "\(pago.text!)"
        UIPpropinaS = Int(PpropinaS.value)
        UIPpropina = "\(UIPpropinaS)"
        UIpropina = "\(UIPpropinaS)"
        Ppropina.text = "$\(UIpropina)%"
        porcentaje = Float(UIpago)! * Float(UIPpropinaS)/Float(100.0)
        Pporcentaje = String(format: "%.2f", porcentaje)
        propina.text = "$ \(Pporcentaje)"
        UITpropina = Float(UIpago)! + porcentaje
        TTotal = String(format: "%.2f", UITpropina)
        Tpropina.text = "$ \(TTotal)"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

