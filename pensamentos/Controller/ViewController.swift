//
//  ViewController.swift
//  pensamentos
//
//  Created by Eros Eloy on 20/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var autor: UILabel!
    @IBOutlet weak var quote: UILabel!
   
    @IBOutlet weak var bgView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ctCima: NSLayoutConstraint!
    
    var quoteManager = quotesManager()
    var configuration = Configuration()
    var valueQuote: quote!
    var timer: Timer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        display()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       display()
    }
    
    func display()
    {
        timer?.invalidate()
        valueQuote = quoteManager.prepareQuote()
        
        self.autor.text = valueQuote.author
        self.quote.text = valueQuote.quote
        self.imageView.image = UIImage(named: valueQuote.image)
        self.bgView.image = self.imageView.image
        self.ctCima.constant = 100
        
        self.autor.alpha = 0
        self.quote.alpha = 0
        self.imageView.alpha = 0
        
        self.view.layoutIfNeeded()
       
        UIView.animate(withDuration: 2.5)
        {
            self.ctCima.constant = 10
            self.autor.alpha = 1
            self.quote.alpha = 1
            self.imageView.alpha = 1
            
            self.view.layoutIfNeeded()
        }
        
        if configuration.mudarAutomaticamente
        {
            timer = Timer.scheduledTimer(withTimeInterval: Double(configuration.interval), repeats: true, block: { (Timer) in
                
                self.display()
                
            })
        }
    }
    
    
    
}

