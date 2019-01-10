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
    @IBOutlet weak var txtEdad: UITextField!
    @IBOutlet weak var txtResultado: UITextView!
    
    var author = "Gino"
    var mensaje: String = "Result"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var dataNombreRecibido:String? // Variable protejida
        dataNombreRecibido = txtNombre.text // retorna un string optional
        // tengo que asignarla a un string optional
        print(dataNombreRecibido!)
        
        print("Author of this Program is \(author)")
        let msjEnd = "Thanks for using"; print(msjEnd)
        //basics()
        txtResultado.text = mensaje
        
    }
    
    @IBAction func procesando(_ sender: Any) {
        
        let nameStr = txtNombre.text ?? ""
        let edadStr:String? = txtEdad.text
        let edadInt = Int(edadStr ?? "0")
        //let edadInt = Int(edadStr!)
        
        let anio:Int = calculandoYearOfBirth(age: edadInt)
        let msj = "Bienvenido Sr. \(nameStr), ud nacio en el año \(anio)"
        
        
        //tipo Optional esta Wrap -> ?
        // retirar el option , es estado UnWrap -> !
        
        
        
        txtResultado.text = msj
    }
    
    var currentYear:Int = 2018
    func calculandoYearOfBirth(age:Int?)->Int{
        return currentYear - age!
    }
    
    
    
    func basics(){
        
        let minValue = UInt8.min
        let maxValue = UInt8.max
        print("\(minValue)  \(maxValue)")
        
        let meaningOfLife = 42
        let pi = 3.14
        let anotherPi = 3 + 0.1415
        
        print(anotherPi)
        
        let three = 3
        let four:Int = 4
        let fourDouble = Double(four) + 0.34
        print(fourDouble)
        
        let reverseInt = Int(fourDouble)
        print(reverseInt)
        
        let orangeAreOrange = true
        let system_down = false
        
        if orangeAreOrange{
            print("Boolean General True")
        }else{
            print("Orange arent orange . _????")
        }
        
        var variable = 1
        
        if variable == 1 {
            print("variable is 1")
        }
        
        
        //-------  tuplas -------
        
        let http404error = (404, "Not Found")
        // http404error is of type (Int, String) and the value is (404, "not found")
        
        let http503error = (503, "Server not available")
        
        let (statusCode, statusMessage)=http503error
        
        print("Code: \(statusCode) and the message: \(statusMessage)")
        
        let (justStatus,_) = http404error
        print("justStatus: \(justStatus)")
        
        print("Using Index, CODE: !()")
        
        
    }


}

