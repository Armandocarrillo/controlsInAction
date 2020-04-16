//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Armando Carrillo on 15/04/20.
//  Copyright © 2020 Armando Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toggled: UISwitch!
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        print("Button was tapped !")
        
        if toggled.isOn{
            print("The switch is on!!!")
        } else {
          print("The switch is off!!")
        }
        
        print("The slider is set to \(slider.value)")
    }
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn{
            print("The switch is on!!!")
        } else {
            print("The switch is off!!")
        }
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}

