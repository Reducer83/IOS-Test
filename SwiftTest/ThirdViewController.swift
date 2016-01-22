//
//  ThirdViewController.swift
//  SwiftTest
//
//  Created by Richard Thomson on 20/11/2015.
//  Copyright © 2015 Richard Thomson. All rights reserved.
//

import UIKit


class ThirdViewController: UIViewController {
    
    @IBAction func ReturnToCoins(sender: AnyObject) {
        
        mixerPicked = true
        
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mixers.count
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return mixers[row]
    }
    

    // Picking a mixer
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            currentGame.mixer = mixers[0]
            print(currentGame.mixer)
        }
        else if(row == 1)
        {
            currentGame.mixer = mixers[1]
            print(currentGame.mixer)
        }
        else if(row == 2)
        {
            currentGame.mixer = mixers[2]
            print(currentGame.mixer)
        }
        else if(row == 3)
        {
            currentGame.mixer = mixers[2]
            print(currentGame.mixer)
        }
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
