//
//  ViewController.swift
//  WeatherApp
//
//  Created by Matt Chowning on 1/11/18.
//  Copyright © 2018 Matt Chowning. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    var weatherTableViewController: WeatherTableViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        processInput()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonClick(_ sender: UIButton) {
        processInput()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        weatherTableViewController = segue.destination as? WeatherTableViewController
    }
    
    //MARK: Private Methods
    
    private func processInput() {
        let value = ZipHandler.handleInput(input: textField.text!)
        textField.text = ""
        weatherTableViewController.addValue(value)
    }
}
