//
//  AddPlayerView.swift
//  SwiftTest
//
//  Created by Richard Thomson on 25/11/2015.
//  Copyright © 2015 Richard Thomson. All rights reserved.
//

import UIKit

class AddPlayerView: UIViewController {
    
    
    @IBOutlet var AddPlayerNameBox: UITextField!
    
    @IBOutlet var PlayerOneLabel: UILabel!
    @IBOutlet var PlayerTwoLabel: UILabel!
    @IBOutlet var PlayerThreeLabel: UILabel!
    @IBOutlet var PlayerFourLabel: UILabel!
    @IBOutlet var PlayerFiveLabel: UILabel!
    
    @IBAction func AddPlayerClick(sender: AnyObject) {
        
        
        currentGame.Players.append(AddPlayerNameBox.text!)
        AddPlayerNameBox.text = ""
       
        
        if currentGame.Players.count == 2 {
        PlayerOneLabel.text = currentGame.Players[1]
        }
        
        else if currentGame.Players.count == 3 {
            PlayerTwoLabel.text = currentGame.Players[2]
        }
        
        else if currentGame.Players.count == 4 {
            PlayerThreeLabel.text = currentGame.Players[3]
        }
        
        else if currentGame.Players.count == 5 {
            PlayerFourLabel.text = currentGame.Players[4]
        }
        
        else if currentGame.Players.count == 6 {
            PlayerFiveLabel.text = currentGame.Players[5]
        }
        
        print(currentGame.Players)
        
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
