//
//  BasalRatesTableViewController.swift
//  LoopKit
//
//  Created by Jaim Zuber on 5/4/17.
//  Copyright © 2017 LoopKit Authors. All rights reserved.
//

import Foundation
//import RileyLinkKit

public protocol BasalRatesTableViewControllerDelegate {
    func basalRatesUpdateRequested(by basalRatesViewController: BasalRatesTableViewController)
}

public class BasalRatesTableViewController : SingleValueScheduleTableViewController {

    let ButtonReuseIdentifier = "BasalRatesButtonReuseIdentifier"
    public var basalRateDelegate: BasalRatesTableViewControllerDelegate?
//    public var device: RileyLinkDevice?
    
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
//            updateBasalRatesFromDevice()
            
            basalRateDelegate?.basalRatesUpdateRequested(by: self)
        } else {
            super.tableView(tableView, didSelectRowAt: indexPath)
        }
    }
    
    func updateBasalRatesFromDevice() {
//        device?.ops?.getBasalSettings({ (basalScheduleResponse) in
//            
//            switch basalScheduleResponse {
//                
//            case .success(let basalReponseArray):
//                
//                // Convert to displayable type
//                let displayableTypeArray = basalReponseArray.map{ return RepeatingScheduleValue<Double>(startTime: TimeInterval(minutes: Double($0.minutes)), value: $0.rate) }
//                
//                self.scheduleItems = displayableTypeArray
//                
//                DispatchQueue.main.async {
//                    self.tableView.reloadData()
//                }
//            case .failure(let error):
//                NSLog("Error updating Basal Settings: \(String(describing: error))")
//                break
//            
//            }
//        })
    }
}
