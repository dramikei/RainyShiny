//
//  Location.swift
//  RainyShiny
//
//  Created by Raghav Vashisht on 09/04/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init () {}
    
    
    var latitude:Double!
    var longitude:Double!
}
