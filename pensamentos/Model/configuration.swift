//
//  configuration.swift
//  pensamentos
//
//  Created by Eros Eloy on 21/02/2021.
//

import Foundation

class Configuration
{
    let defaults = UserDefaults.standard
    
    init() {
        
    }
    
    var interval: Int
    {
        get
        {
            return defaults.integer(forKey: "interval")
        }
        
        set
        {
            defaults.set(newValue, forKey: "interval")
        }
    }
    
    var mudarAutomaticamente: Bool
    {
        
        get
        {
            return defaults.bool(forKey: "mudarAutomaticamente")
        }
        set
        {
            defaults.set(newValue, forKey: "mudarAutomaticamente")
        }
        
    }
    
    var tema: Int
    {
        get
        {
            return defaults.integer(forKey: "tema")
        }
        
        set
        {
            defaults.set(newValue, forKey: "tema")
        }
    }
    
    
}
