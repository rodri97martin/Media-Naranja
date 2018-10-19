//
//  ViewController.swift
//  Media Naranja
//
//  Created by Rodrigo Martín Martín on 18/10/2018.
//  Copyright © 2018 Rodri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var birthday: Date?
    var loveday: Date?
    var mediaNaranja: Date?
    
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var lovedayLabel: UILabel!
    @IBOutlet weak var mediaNaranjaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getMediaNaranjaDay()
        updateLabels()
    }
    
    @IBAction func goHome(_ segue: UIStoryboardSegue) {
        getMediaNaranjaDay()
        updateLabels()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Birthday" {
            
            if let bvc = segue.destination as? BirthdayViewController {
                if let bd = birthday {
                    bvc.birthday = bd
                }
            }
        } else if segue.identifier == "Loveday" {
            
            if let lvc = segue.destination as? LovedayViewController {
                if let ld = loveday {
                   lvc.loveday = ld
                }
            }
        }
    }
    
    private func updateLabels() {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.locale = Locale(identifier: "es_ES")
        
        if let bd = birthday {
            birthdayLabel.text = "El \(formatter.string(from: bd))"
        } else {
            birthdayLabel.text = "Introduce la fecha"
        }
        
        if let ld = loveday {
            lovedayLabel.text = "El \(formatter.string(from: ld))"
        } else {
            lovedayLabel.text = "Introduce la fecha"
        }
        
        if let mn = mediaNaranja {
            mediaNaranjaLabel.text = "El \(formatter.string(from: mn))"
        } else {
            mediaNaranjaLabel.text = "Introduce los datos restantes"
        }
        
    }
    
    private func getMediaNaranjaDay() {
        
        if let bd = birthday, let ld = loveday {
            let interval = ld.timeIntervalSince(bd)
            mediaNaranja = ld.addingTimeInterval(interval)
        }
    }

}

