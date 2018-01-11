//
//  ViewController.swift
//  WeatherApp
//
//  Created by Matt Chowning on 1/11/18.
//  Copyright © 2018 Matt Chowning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonClick(_ sender: UIButton) {
        outputLabel.text = ZipHandler.handleInput(input: textField.text!)
    }
}

