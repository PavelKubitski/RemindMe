//
//  ChooseDateViewController.swift
//  RemindMe
//
//  Created by Pavel Kubitski on 28.01.18.
//  Copyright © 2018 Pavel Kubitski. All rights reserved.
//

import UIKit

/**
 Choose date on datePicker screen
 */
class ChooseDateViewController: UIViewController {
    
    @IBOutlet private weak var picker: UIDatePicker!
    @IBOutlet private weak var cancelButton: UIButton!
    @IBOutlet private weak var readyButton: UIButton!
    
    /**
     Completion after save button was pressed
     */
    fileprivate var saveCompletion: (Date) -> Void = { _ in }
    
    /**
     Create and present modaly
     
     - parameters:
         - context: context where screen will be present
         - saveCompletion: completion after save button was pressed
     */
    static func present(_ context: UINavigationController, _ saveCompletion: @escaping (Date) -> Void) {
        let controller: ChooseDateViewController = ChooseDateViewController.createFromStoryboard()
        
        context.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func onCancelButtonWasPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onReadyButtonWasPressed(_ sender: UIButton) {
        let date = picker.date
        
        saveCompletion(date)
        
        dismiss(animated: true, completion: nil)
    }
    
}
