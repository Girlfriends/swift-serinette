//
//  ViewController.swift
//  SwiftSerinette
//
//  Created by Sam Tarakajian on 3/3/16.
//  Copyright © 2016 girlfriends. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let oscillator = AKOscillator()
        
        AudioKit.output = oscillator
        AudioKit.start()
        
        oscillator.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

