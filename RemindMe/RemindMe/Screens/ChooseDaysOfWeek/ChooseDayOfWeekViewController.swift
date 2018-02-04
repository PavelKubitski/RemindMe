//
//  ChooseDaysOfWeekViewController.swift
//  RemindMe
//
//  Created by Pavel Kubitski on 03.02.18.
//  Copyright © 2018 Pavel Kubitski. All rights reserved.
//

import UIKit


/**
 Choose day of week
 */
class ChooseDayOfWeekViewController: UIViewController {
    
    @IBOutlet private var dayButtons: [UIButton]!
    @IBOutlet private weak var saveButton: UIButton!
    @IBOutlet private weak var cancelButton: UIButton!
    
    private var choosedDays: Set<DayOfWeek> = []
    
    /**
     Completion after save button was pressed
     */
    fileprivate var saveCompletion: (Set<DayOfWeek>) -> Void = { _ in }
    
    /**
     Create and present modaly
     
     - parameters:
         - context: context where screen will be present
         - saveCompletion: completion after save button was pressed
     */
    static func present(_ context: UINavigationController, _ saveCompletion: @escaping (Set<DayOfWeek>) -> Void) {
        let controller: ChooseDayOfWeekViewController = ChooseDayOfWeekViewController.createFromStoryboard()
        controller.saveCompletion = saveCompletion
        
        context.present(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureButtons()
    }

    private func configureButtons() {
        dayButtons.forEach { (button) in
            button.contentHorizontalAlignment = .left
            button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0)
        }
    }
    
    @IBAction private func onDayButtonWasPressed(_ sender: UIButton) {
        guard let day = DayOfWeek(rawValue: sender.tag) else { return }
        
        if choosedDays.contains(day) {
            choosedDays.remove(day)
        } else {
            choosedDays.insert(day)
        }
    }
    
    @IBAction private func onSaveButtonWasPressed(_ sender: UIButton) {
        saveCompletion(choosedDays)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction private func onCancelButtonWasPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
