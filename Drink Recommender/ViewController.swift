//
//  ViewController.swift
//  Drink Recommender
//
//  Created by Yoshua Elmaryono on 10/07/18.
//  Copyright © 2018 Yoshua Elmaryono. All rights reserved.
//

import UIKit

enum Temp {
    case hot
    case cold
    case warm
}

class ViewController: UIViewController {
    var label: Temp = .warm
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "recommendDrinkSegue" {
            let recommendedDrink: Temp
            switch label {
            case .hot: recommendedDrink = .cold
            case .cold: recommendedDrink = .hot
            case .warm: recommendedDrink = .warm
            }
            
            let nextDestination = segue.destination as! RecommendedDrinkController
            nextDestination.recommendedDrink = recommendedDrink
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        let string = textField.text!.lowercased()
        switch string {
        case "hot": label = .hot
        case "cold": label = .cold
        default: label = .warm
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
