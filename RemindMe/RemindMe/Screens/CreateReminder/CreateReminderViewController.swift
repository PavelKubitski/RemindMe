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
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var remindButton: UIButton!
    @IBOutlet weak var textView: UITextView!
    
    static func push(_ context: UINavigationController) {
        let controller = create()
        context.pushViewController(controller, animated: true)
    }
    
    private static func create() -> CreateReminderViewController {
        let storyboard = UIStoryboard(name: "CreateReminderViewController", bundle: nil)
        let screen = storyboard.instantiateViewController(withIdentifier: "CreateReminderViewController")

        return screen as! CreateReminderViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Создать"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save,
                                                            target: self,
                                                            action: #selector(onSaveButtonWasPressed))
    }
    
    @IBAction func onRemindButtonWasPressed(_ sender: UIButton) {
        guard let navController = navigationController else {
            return
        }
        
        RemindSettingsViewController.push(navController)
    }
    
    @objc
    private func onSaveButtonWasPressed() {
        // Save reminder to DataBase
    }
    
}
