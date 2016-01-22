//
//  ViewController.swift
//  SwiftTest
//
//  Created by Richard Thomson on 16/06/2015.
//  Copyright (c) 2015 Richard Thomson. All rights reserved.
//

import UIKit

    var mixers = ["Please Select","Coke","Lemonade","Milk","Orange"]
    var spirits = ["Please Select","Vodka","Tequila","Whisky","Sambuca"]
    var headcount = 0
    var mixerPicked = false
    var spiritPicked = false


class Game :NSObject {
    var mixer = ""
    var spirit = ""
    var Buyer = ""
    var Players: [String] = [""]
    var currentPlayer = 1
   
}

var currentGame = Game()

class ViewController: UIViewController {
    @IBOutlet weak var CardTwoView: UIImageView!
    @IBOutlet weak var PlayButton: UIButton!
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var headcountLabel: UILabel!
    @IBOutlet weak var UserMsgLabel: UILabel!
    @IBOutlet var SpiritLabel: UILabel!
    @IBOutlet var MixerLabel: UILabel!
    @IBOutlet var nextGoLabel: UILabel!
    @IBOutlet var startNewGameButton: UIButton!
   
    
    var switchCount = 0
 
    var timer = NSTimer()
    var timer2 = NSTimer()
    var intervalVar = 0.25

  
    
    // Trying to create a method which alrernates the head and tails images for a few seconds after toss
    
    func toggleImage() {
        
        
        
        if CardTwoView.image == UIImage(named: "vuIvO")
        {
            CardTwoView.image = UIImage(named: "vuIvO_Fotor_Tails")
            switchCount = switchCount + 1
            if switchCount == 10 {
                timer.invalidate()
            }
        }
        
        
        else if CardTwoView.image == UIImage(named: "vuIvO_Fotor_Tails")
        {
            CardTwoView.image = UIImage(named: "vuIvO_Fotor_Head")
            switchCount = switchCount + 1
            if switchCount == 10 {
                timer.invalidate()
            }
        }
        
        else if CardTwoView.image == UIImage(named: "vuIvO_Fotor_Head")
        {
            CardTwoView.image = UIImage(named: "vuIvO_Fotor_Tails")
            switchCount = switchCount + 1
            if switchCount == 10 {
                timer.invalidate()
            }
        }
        
          
    
        
    }
        
    
    func coinToss() {
        
        if currentGame.currentPlayer == (currentGame.Players.count - 1) {
            currentGame.currentPlayer = 1
        }
        
        else {
        currentGame.currentPlayer = currentGame.currentPlayer + 1
        }

        timer = NSTimer.scheduledTimerWithTimeInterval(intervalVar, target:self, selector: Selector("toggleImage"), userInfo: nil, repeats: true)
        
        timer2 = NSTimer.scheduledTimerWithTimeInterval(intervalVar*10, target:self, selector: Selector("chooseCoin"), userInfo: nil, repeats: false)
       
        
    }
    
    func chooseCoin() {
        
        switchCount = 0
        PlayButton.enabled = true
        
        
        var headtossInt: Int
        
        headtossInt = Int(arc4random_uniform(2))
        
        if headtossInt == 1 {
        
        headcount = headcount + 1
        CardTwoView.image = UIImage(named: "vuIvO_Fotor_Head")
        UserMsgLabel.text = "Heads!"
        }
        
        else {
        
        CardTwoView.image = UIImage(named: "vuIvO_Fotor_Tails")
        UserMsgLabel.text = "Tails!"
        }
        
        print(headcount)
        //var headtosscountString = String(headcount)
        headcountLabel.text = String(headcount)
        print(headcountLabel.text)
        
        if headcount == 5 && spiritPicked == false {
        
            performSegueWithIdentifier("ShowSecondView", sender: self)
        }
        
        if headcount == 10 && mixerPicked == false  {
        
             performSegueWithIdentifier("ChooseMixerSegue", sender: self)
        
        }
        
        if headcount == 15 && UserMsgLabel == "Heads!" {
        
        UserMsgLabel.text = "Get it bought!"
        }
        
        if headcount == 20 && UserMsgLabel == "Heads!" {
        
        UserMsgLabel.text = "Drink it!!! mwhahaha"
        }

        
        
    }
    
    
    
    
    @IBAction func ClickAction(sender: AnyObject) {
       
        PlayButton.enabled = false
        coinToss()
        nextGoLabel.text = currentGame.Players[currentGame.currentPlayer] + ", Please Toss"
    
    
    
        print(currentGame.currentPlayer)
    }
    
  
    


    @IBAction func ResetAction(sender: AnyObject) {
        
        headcount = 0
        headcountLabel.text = String(headcount)
        mixerPicked = false
        spiritPicked = false
        currentGame.spirit = ""
        currentGame.mixer = ""
        SpiritLabel.text = currentGame.spirit
        MixerLabel.text = currentGame.mixer
        UserMsgLabel.text = "Click 'Flip' to Start"
        currentGame.Players = [""]
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    
      
        headcountLabel.text = String(headcount)
        PlayButton.setTitle("Flip", forState: UIControlState.Normal)
        SpiritLabel.text = currentGame.spirit
        MixerLabel.text = currentGame.mixer
        
        if currentGame.Players.count == 1 {
            PlayButton.enabled = false
        }
        else {
            nextGoLabel.text = currentGame.Players[currentGame.currentPlayer] + ", Please Toss"
            startNewGameButton.enabled = false
        }
        
   
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
/*

    func setupUI()
    {
        
        TextField.placeholder = "Type Here"
        
    }
*/    


    


}

