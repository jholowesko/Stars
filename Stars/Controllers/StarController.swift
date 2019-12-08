//
//  StarController.swift
//  Stars
//
//  Created by John Holowesko on 12/8/19.
//  Copyright © 2019 John Holowesko. All rights reserved.
//

// MVC
// Models
// Views
// Controllers

import Foundation


// Source of truth for the app
class StarController {
    
    private(set) var stars: [Star] = []
    
    // Create
    // @discardableResult - You can call the function without doing anything with the return value
    // You use this ^^ when you don't want the compliler to yell at you for not using the result of the function.
    // Throw away the return 
    
    @discardableResult func createStar(named name: String, withDistance distance: Double) -> Star {
        let star = Star(name: name, distance: distance)
        stars.append(star)
        return star
    }
    
}
