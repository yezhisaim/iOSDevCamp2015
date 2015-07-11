//
//  EnteredRestaurantCallback.swift
//  iosDevCampApp
//
//  Created by Yezhisai Murugesan on 7/10/15.
//  Copyright (c) 2015 Isai. All rights reserved.
//

import UIKit
import SenseSDK

class EnteredRestaurantCallback: RecipeFiredDelegate {
    @objc func recipeFired(args: RecipeFiredArgs) {
        
        // Your user has entered a restaurant!
        
        NSLog("Recipe \(args.recipe.name) fired at \(args.timestamp).");
        for trigger in args.triggersFired {
            for place in trigger.places {
                NSLog(place.description)
            }
        }
    }
}
