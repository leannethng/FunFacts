//
//  ViewController.swift
//  FunFacts
//
//  Created by Leanne Thng on 6/22/16.
//  Copyright © 2016 Leanne Thng. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBOutlet weak var funFactButton: UIButton!
    
    //Loading the FactModel struct from FactModel.swift
    let factModel = FactModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factModel.getRandomFact()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        let randomColor = ColorModel().getRandomColor()
         funFactButton.tintColor = randomColor
        
        view.backgroundColor = randomColor
       
        funFactLabel.text = factModel.getRandomFact()
    }

}

