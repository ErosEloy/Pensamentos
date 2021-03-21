//
//  DefViewController.swift
//  pensamentos
//
//  Created by Eros Eloy on 21/02/2021.
//

import UIKit

class DefViewController: UIViewController {

    @IBOutlet weak var bg: UIView!
    @IBOutlet weak var autorefresh: UISwitch!
    @IBOutlet weak var intervalo: UISlider!
    @IBOutlet weak var labelIntervalo: UILabel!
    @IBOutlet weak var LabelMudarAutomaticamente: UILabel!
    var configuration = Configuration()
    
  
    @IBOutlet weak var segmenteColor: UISegmentedControl!
    /*
    @IBAction func trocarTema(_ sender: Any) {
       
        switch segmenteColor.selectedSegmentIndex {
        case 0:
            bg.backgroundColor = UIColor(red: CGFloat(0), green: CGFloat(0), blue: CGFloat(0), alpha: CGFloat(1))
            labelIntervalo.textColor = UIColor(red: CGFloat(0), green: CGFloat(0), blue: CGFloat(0), alpha: CGFloat(1))
            
            LabelMudarAutomaticamente.textColor = UIColor(red: CGFloat(0), green: CGFloat(0), blue: CGFloat(0), alpha: CGFloat(1))
        default:
            bg.backgroundColor = UIColor(red: CGFloat(255), green: CGFloat(255), blue: CGFloat(255), alpha: CGFloat(1))
            labelIntervalo.textColor = UIColor(red: CGFloat(255), green: CGFloat(255), blue: CGFloat(255), alpha: CGFloat(1))
            
            LabelMudarAutomaticamente.textColor = UIColor(red: CGFloat(255), green: CGFloat(255), blue: CGFloat(255), alpha: CGFloat(1))
        }
        
        
        
    */
    
    @IBAction func MudarAutomaticamenteFunction(_ sender: Any)
    {
        if autorefresh.isOn
        {
            LabelMudarAutomaticamente.text = "Mudar Automaticamente"
            configuration.mudarAutomaticamente = autorefresh.isOn
        }
        else
        {
            LabelMudarAutomaticamente.text = "Não Mudar Automaticamente"
            configuration.mudarAutomaticamente = autorefresh.isOn
        }
    }
    
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        intervalo.value = Float(configuration.interval)
        labelIntervalo.text = "Mudar após " + String(Int(intervalo.value)) + " segundos"
        autorefresh.isOn = configuration.mudarAutomaticamente
       
    }
    

    @IBAction func autorefreshFunction(_ sender: Any)
    {
        labelIntervalo.text = "Mudar após " + String(Int(intervalo.value)) + " segundos"
        configuration.interval = Int(intervalo.value)
    }
    
    
}
