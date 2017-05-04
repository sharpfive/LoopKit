//
//  BasalRatesTableViewController.swift
//  LoopKit
//
//  Created by Jaim Zuber on 5/4/17.
//  Copyright © 2017 LoopKit Authors. All rights reserved.
//

import Foundation

public class BasalRatesTableViewController : SingleValueScheduleTableViewController {

    let ButtonReuseIdentifier = "BasalRabtesButtonReuseIdentifier"
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let superRows = super.tableView(tableView, numberOfRowsInSection: section)
        return superRows + 1
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == self.tableView(tableView, numberOfRowsInSection: indexPath.section) - 1 {
            let buttonCell = UITableViewCell(style: .default, reuseIdentifier: ButtonReuseIdentifier)
            buttonCell.textLabel?.text = "Button - not really"
            return buttonCell
        } else {
            return super.tableView(tableView, cellForRowAt: indexPath)
        }
    }
    
    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == self.tableView(tableView, numberOfRowsInSection: indexPath.section) - 1 {
            //
        } else {
            super.tableView(tableView, didSelectRowAt: indexPath)
        }
    }
}
