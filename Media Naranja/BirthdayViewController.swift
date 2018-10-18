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

    @IBOutlet weak var birthdayPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        birthdayPicker.date = birthday
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Birthday Aceptar" {
            if let vc = segue.destination as? ViewController {
                vc.birthday = birthdayPicker.date
            }
        }
    }
    

}
