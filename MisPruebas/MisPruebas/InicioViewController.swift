//
//  ViewController.swift
//  MisPruebas
//
//  Created by Pedro Hernandez Ruiz on 23/5/18.
//  Copyright © 2018 The eMotion Apps. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController {
    
    @IBOutlet weak var interruptor: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interruptor.onTintColor = .darkGray
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func interruptorPulsado(_ sender: UISwitch) {
        // Cambiar el color de fondo del view controller, según la posición del switch en on u off.
        view.backgroundColor = sender.isOn == true ? .yellow : .darkGray
        // Esta variable almacenará el valor del escalado
        var escalado: CGAffineTransform = .identity
        if sender.isOn {
            // Esta trasformación escalará 2 veces su tamaño
            escalado = CGAffineTransform(scaleX: 2, y: 2)
        }
        UISwitch.animate(withDuration: 0.3) {
            sender.transform = escalado
        }
    }
        
}

