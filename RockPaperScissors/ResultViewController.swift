//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by Maruf on 4/2/18.
//  Copyright © 2018 Maruf. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController{
    
    var randomValue: Int!
    var rpsValue: Int!
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if rpsValue == 1  {
            
            switch randomValue{
            case 2 :
                
                resultImage.image = #imageLiteral(resourceName: "PaperCoversRock")
                resultLabel.text = "You lose! Paper cover rock :( "
                
            case 3 :
                resultImage.image = #imageLiteral(resourceName: "RockCrushesScissors")
                resultLabel.text = "You win! Rock crash scissors :) "
            default:
                resultImage.image = #imageLiteral(resourceName: "itsATie")
                resultLabel.text = "Its a tie !!!"
                
            }
            
        }
        
        else if rpsValue == 2  {
            
            switch randomValue{
            case 1 :
                
                resultImage.image = #imageLiteral(resourceName: "PaperCoversRock")
                resultLabel.text = "You win! Paper cover rock :) "
                
            case 3 :
                resultImage.image = #imageLiteral(resourceName: "ScissorsCutPaper")
                resultLabel.text = "You lose! Scissors cuts paper :( "
            default:
                resultImage.image = #imageLiteral(resourceName: "itsATie")
                resultLabel.text = "Its a tie !!!"
                
            }
            
        }
        
        else{
            
            switch randomValue{
                case 1 :
                
                resultImage.image = #imageLiteral(resourceName: "RockCrushesScissors")
                resultLabel.text = "You lose! Rock crush scissors :( "
                
                case 2 :
                resultImage.image = #imageLiteral(resourceName: "ScissorsCutPaper")
                resultLabel.text = "You win! Scissors cuts paper :) "
                default:
                resultImage.image = #imageLiteral(resourceName: "itsATie")
                resultLabel.text = "Its a tie !!!"
        }
        
    }
        
    }
    
}

