//
//  InterfaceController.swift
//  Heads or Tails WatchKit Extension
//
//  Created by Denzel Carter on 3/11/15.
//  Copyright (c) 2015 BearBrosDevelopment. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    @IBAction func flipButton() {
        
        var randomNumber = arc4random_uniform(2)
        
        if randomNumber == 0 {
            
            HeadsOrTails.setText("Heads")
            
        } else if randomNumber == 1 {
            HeadsOrTails.setText("Tails")
        } else {
            HeadsOrTails.setText("Neither")
        }
        
    }
    
    @IBOutlet weak var HeadsOrTails: WKInterfaceLabel!
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
