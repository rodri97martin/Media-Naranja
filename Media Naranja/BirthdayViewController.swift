//
//  BirthdayViewController.swift
//  Media Naranja
//
//  Created by Rodrigo Martín Martín on 18/10/2018.
//  Copyright © 2018 Rodri. All rights reserved.
//

import UIKit

class BirthdayViewController: UIViewController {
    
    var birthday = Date()
    var loveday = Date()
    let ac = AC()

    @IBOutlet weak var birthdayPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        birthdayPicker.date = birthday
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "Birthday Aceptar" {
            if birthdayPicker.date > Date() {
                ac.showAlert("La fecha introducida es del futuro")
                present(ac.alert!, animated: true)
                return false
            } else if birthdayPicker.date > loveday {
                ac.showAlert("No puedes nacer después de enamorarte")
                present(ac.alert!, animated: true)
                return false
            } else {
                return true
            }
        } else {
            return true
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Birthday Aceptar" {
            if let vc = segue.destination as? ViewController {
                vc.birthday = birthdayPicker.date
            }
        }
    }
}
