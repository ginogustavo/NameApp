//
//  ViewController.swift
//  Sample01
//
//  Created by Academia on 7/01/19.
//  Copyright © 2019 Index. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtNombre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("Testing TXT")
        var dataNombreRecibido:String? // Variable protejida
        
        dataNombreRecibido = txtNombre.text // retorna un string optional
        // tengo que asignarla a un string optional
        print(dataNombreRecibido)
        
        
    }


}

