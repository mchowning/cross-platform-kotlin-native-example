//
//  WeatherTableViewController.swift
//  WeatherApp
//
//  Created by Matt Chowning on 1/11/18.
//  Copyright © 2018 Matt Chowning. All rights reserved.
//

import UIKit

class WeatherTableViewController: UITableViewController {

    //MARK: Properties
    private var values = [String]()
    
    func addValue(_ s: String) {
        values.append(s)
        tableView.beginUpdates()
        tableView.insertRows(at: [IndexPath(row: values.count-1, section: 0)], with: .automatic)
        tableView.endUpdates()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return values.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherTableViewCell", for: indexPath) as? WeatherTableViewCell else {
            fatalError("The dequeued cell is not an instance of WeatherTableViewCell")
        }
        
        cell.label.text = values[indexPath.row]
        return cell
    }
}
