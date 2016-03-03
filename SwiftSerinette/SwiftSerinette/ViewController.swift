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
    @IBOutlet var buttons: [UIButton]!

    let octave = 4
    let notes = [0, 2, 4, 5]
    let pluckedString = AKPluckedString(frequency: 22050)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AudioKit.output = pluckedString
        AudioKit.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: UIButton) {
        let note = (12*octave) + notes[sender.tag-1]
        pluckedString.trigger(frequency: note.midiNoteToFrequency())
    }

}

