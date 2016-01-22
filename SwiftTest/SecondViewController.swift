//
//  SecondViewController.swift
//  SwiftTest
//
//  Created by Richard Thomson on 26/10/2015.
//  Copyright (c) 2015 Richard Thomson. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {

    @IBOutlet var PlayerMessageLabel: UILabel!
    
    @IBAction func returnToCoins(sender: AnyObject) {
        
           spiritPicked = true
        
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return spirits.count
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return spirits[row]
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        PlayerMessageLabel.text = currentGame.Players[currentGame.currentPlayer] + "Choose a Spirit"
    
    }


    
    // Picking a spirit
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            currentGame.spirit = spirits[0]
            print(currentGame.spirit)
        }
        else if(row == 1)
        {
            currentGame.spirit = spirits[1]
            print(currentGame.spirit)
        }
        else if(row == 2)
        {
            currentGame.spirit = spirits[2]
            print(currentGame.spirit)
        }
     
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
*/    
}



