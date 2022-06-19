//
//  ViewController.swift
//  TrafficLights
//
//  Created by Никита Бирюков on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightVIew: UIView!
    @IBOutlet var greenLightVIew: UIView!
    @IBOutlet var buttonChangeColor: UIButton!
    var lightOn = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 80
        yellowLightVIew.layer.cornerRadius = 80
        greenLightVIew.layer.cornerRadius = 80
        buttonChangeColor.layer.cornerRadius = 10
        redLightView.alpha = 0.3
        yellowLightVIew.alpha = 0.3
        greenLightVIew.alpha = 0.3
        
    }

    @IBAction func changeCollorLight(_ sender: Any) {
        switch lightOn {
            case 0:
                redLightView.alpha = 1
                lightOn = 1
                buttonChangeColor.setTitle("NEXT", for: .normal)
            case 1:
                yellowLightVIew.alpha = 1
                redLightView.alpha = 0.3
                lightOn = 2
            case 2:
                greenLightVIew.alpha = 1
                yellowLightVIew.alpha = 0.3
                lightOn = 3
            case 3:
                redLightView.alpha = 1
                greenLightVIew.alpha = 0.3
                lightOn = 1
            default:
                redLightView.alpha = 1
                lightOn = 1
        }
    }
    
}

