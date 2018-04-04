//
//  MainViewController.swift
//  RockPaperScissors
//
//  Created by Maruf on 4/2/18.
//  Copyright © 2018 Maruf. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func randomValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 3
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "rockSegue" {
            
            let controller = segue.destination as! ResultViewController
            
            controller.randomValue = self.randomValue()
            controller.rpsValue = 1
            
        }
        
        if segue.identifier == "paperSegue" {
            
            let controller = segue.destination as! ResultViewController
            
            controller.randomValue = self.randomValue()
            controller.rpsValue = 2
            
        }
        
        if segue.identifier == "scissorsSegue" {
            
            let controller = segue.destination as! ResultViewController
            
            controller.randomValue = self.randomValue()
            controller.rpsValue = 3
            
        }
    }
    


}

