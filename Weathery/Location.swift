//
//  Location.swift
//  Weathery
//
//  Created by Diaconu Marius on 9/19/16.
//  Copyright © 2016 Diaconu Stefan. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    
    private init () { }
    
    var latitude: Double!
    var longitude: Double!
}
