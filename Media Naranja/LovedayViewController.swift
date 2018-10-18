//
//  LovedayViewController.swift
//  Media Naranja
//
//  Created by Rodrigo Martín Martín on 18/10/2018.
//  Copyright © 2018 Rodri. All rights reserved.
//

import UIKit

class LovedayViewController: UIViewController {
    
    var loveday = Date()
    
    @IBOutlet weak var lovedayPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lovedayPicker.date = loveday
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Loveday Aceptar" {
            if let vc = segue.destination as? ViewController {
                vc.loveday = lovedayPicker.date
            }
        }
    }

}
