//
//  LovedayViewController.swift
//  Media Naranja
//
//  Created by Rodrigo Martín Martín on 18/10/2018.
//  Copyright © 2018 Rodri. All rights reserved.
//

import UIKit

class LovedayViewController: UIViewController {
    
    var loveday: Date?
    var birthday: Date?
    let ac = AC()
    
    @IBOutlet weak var lovedayPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lovedayPicker.date = loveday ?? Date()
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "Loveday Aceptar" {
            if lovedayPicker.date > Date() {
                ac.showAlert("La fecha introducida es del futuro")
                present(ac.alert!, animated: true)
                return false
            } else if let bd = birthday {
                if lovedayPicker.date < bd {
                    ac.showAlert("No puedes enamorarte antes de nacer")
                    present(ac.alert!, animated: true)
                    return false
                }
            } else {
                return true
            }
        }
        return true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Loveday Aceptar" {
            if let vc = segue.destination as? ViewController {
                vc.loveday = lovedayPicker.date
            }
        }
    }

}
