//
//  ViewController.swift
//  MisPruebas
//
//  Created by Pedro Hernandez Ruiz on 23/5/18.
//  Copyright © 2018 The eMotion Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func interruptorPulsado(_ sender: UISwitch) {
        view.backgroundColor = sender.isOn == true ? .yellow : .darkGray
    }

}

