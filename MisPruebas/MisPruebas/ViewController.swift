//
//  ViewController.swift
//  MisPruebas
//
//  Created by Pedro Hernandez Ruiz on 23/5/18.
//  Copyright © 2018 The eMotion Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
        view.backgroundColor = sender.isOn == true ? .yellow : .darkGray
        var escalado: CGAffineTransform = .identity
        if sender.isOn {
            escalado = CGAffineTransform(scaleX: 2, y: 2)
        }
        UISwitch.animate(withDuration: 0.3) {
            sender.transform = escalado
        }
    }
        
}

