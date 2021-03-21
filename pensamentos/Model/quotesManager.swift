//
//  quotesManager.swift
//  pensamentos
//
//  Created by Eros Eloy on 20/02/2021.
//

import Foundation

class quotesManager {
    
    var quotes: [quote]
    
    init()
    {
        
            let jsonUrl = Bundle.main.url(forResource: "quotes", withExtension: "json")!
            
            let jsonData = try! Data(contentsOf: jsonUrl)
            let json = JSONDecoder()
            quotes = try! json.decode([quote].self, from: jsonData)
       
    }
    
    func prepareQuote() -> quote
    {
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        
        return quotes[index]
    }
    
}
