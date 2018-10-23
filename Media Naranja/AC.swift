//
//  File.swift
//  Media Naranja
//
//  Created by Rodrigo Martín Martín on 23/10/2018.
//  Copyright © 2018 Rodri. All rights reserved.
//

import UIKit

class AC {
    
    var alert: UIAlertController?
    
    func showAlert(_ message: String) {
        
        alert = UIAlertController(title: "Fecha incorrecta", message: message, preferredStyle: .alert)
        alert?.addAction(UIAlertAction(title: "OK", style: .default))
    }
}
