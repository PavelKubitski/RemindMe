//
//  CreateReminderViewController.swift
//  RemindMe
//
//  Created by Pavel Kubitski on 14.01.18.
//  Copyright © 2018 Pavel Kubitski. All rights reserved.
//

import UIKit


/**
 Create reminder screen
 */
class CreateReminderViewController: UIViewController {
    
    static func create() -> CreateReminderViewController {
        let storyboard = UIStoryboard(name: "CreateReminderViewController", bundle: nil)
        let screen = storyboard.instantiateViewController(withIdentifier: "CreateReminderViewController")
        
        return screen as! CreateReminderViewController
    }
    
    
    
}
