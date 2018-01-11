//
//  ZipHandler.swift
//  WeatherApp
//
//  Created by Matt Chowning on 1/11/18.
//  Copyright © 2018 Matt Chowning. All rights reserved.
//

import Foundation

class ZipHandler {
    
    static func handleInput(input: String) -> String {
        if input.isEmpty {
            return "You entered nothing!"
        } else {
            return "You entered \(input)"
        }
    }
}
