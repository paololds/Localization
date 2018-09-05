//
//  ViewController.swift
//  Localization
//
//  Created by Paolo Ladisa on 21/05/2018.
//  Copyright © 2018 Paolo Ladisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textLabel:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBeerWithValue(beerCounter: 0)
    }
    
    @IBAction func siderDidChangeValue(sender:UISlider){
        let currentValue = Int(sender.value)
        updateBeerWithValue(beerCounter: currentValue)
    }
    
    private func updateBeerWithValue(beerCounter:NSInteger){
        let localizedBeers = NSLocalizedString("%d beer(s)",
                                               comment: "number of beers")
        textLabel?.text = localizedStringWithValue(string: localizedBeers,
                                                   counter: beerCounter)
    }
    
    func localizedStringWithValue(string:String, counter:Int) -> String{
        return String.localizedStringWithFormat(string, counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
