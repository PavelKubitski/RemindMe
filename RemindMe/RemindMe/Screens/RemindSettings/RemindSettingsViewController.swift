//
//  RemindSettingsViewController.swift
//  RemindMe
//
//  Created by Pavel Kubitski on 28.01.18.
//  Copyright © 2018 Pavel Kubitski. All rights reserved.
//

import UIKit

/**
 Choose type of remind date
 */
class RemindSettingsViewController: UIViewController {
    
    @IBOutlet weak var inDateButton: UIButton!
    @IBOutlet weak var byDaysOfWeekButton: UIButton!
    
    static func push(_ context: UINavigationController) {
        let controller: RemindSettingsViewController = RemindSettingsViewController.createFromStoryboard()
        
        context.pushViewController(controller, animated: true)
    }

    @IBAction func onRemindInDaysOfWeekButtonWasPressed(_ sender: UIButton) {
        guard let navController = navigationController else {
            return
        }
        
        ChooseDayOfWeekViewController.present(navController) { days in
            
        }
    }
    
    @IBAction func onRemindInDateButtonWasPressed(_ sender: UIButton) {
        guard let navController = navigationController else {
            return
        }
        
        ChooseDateViewController.present(navController) { date in
            
        }
    }
}
