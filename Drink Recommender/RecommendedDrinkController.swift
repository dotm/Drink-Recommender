//
//  RecommendedDrinkController.swift
//  Drink Recommender
//
//  Created by Yoshua Elmaryono on 10/07/18.
//  Copyright © 2018 Yoshua Elmaryono. All rights reserved.
//

import UIKit

class RecommendedDrinkController: UIViewController {
    @IBOutlet weak var drinkPicture: UIImageView!
    @IBOutlet weak var drinkLabel: UILabel!
    var recommendedDrink = Temp.warm

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label: String
        let image: UIImage
        switch recommendedDrink {
        case .hot:
            image = UIImage(named: "hotDrink")!
            label = "Warm up, bro!"
        case .cold:
            image = UIImage(named: "coldDrink")!
            label = "Cool down, bro!"
        case .warm:
            image = UIImage(named: "juiceDrink")!
            label = "Chill, bro!"
        }
        drinkPicture.image = image
        drinkLabel.text = label

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
