//
//  RemindSettingsViewController.swift
//  RemindMe
//
//  Created by Pavel Kubitski on 28.01.18.
//  Copyright © 2018 Pavel Kubitski. All rights reserved.
//

import UIKit

/**
 Reminder remind date settings screen
 */
class RemindSettingsViewController: UIViewController {
    
    @IBOutlet weak var inDateButton: UIButton!
    @IBOutlet weak var byDaysOfWeekButton: UIButton!
    
    static func push(_ context: UINavigationController) {
        let controller: RemindSettingsViewController = RemindSettingsViewController.createFromStoryboard()
        
        context.pushViewController(controller, animated: true)
    }
    
//    private static func create() -> RemindSettingsViewController {
//        let storyboard = UIStoryboard(name: "RemindSettingsViewController", bundle: nil)
//        return storyboard.instantiateViewController(withIdentifier: "RemindSettingsViewController") as! RemindSettingsViewController
//    }
    
    
    @IBAction func onByDaysOfWeekButtonWasPressed(_ sender: UIButton) {
        guard let navController = navigationController else {
            return
        }
        
        ChooseDayOfWeekViewController.present(navController)
    }
    
    @IBAction func onInDateButtonWasPressed(_ sender: UIButton) {
        guard let navController = navigationController else {
            return
        }
        
        ChooseDateViewController.present(navController)
    }
}
