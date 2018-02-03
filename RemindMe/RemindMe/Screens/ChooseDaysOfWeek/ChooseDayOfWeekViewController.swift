//
//  ChooseDaysOfWeekViewController.swift
//  RemindMe
//
//  Created by Pavel Kubitski on 03.02.18.
//  Copyright © 2018 Pavel Kubitski. All rights reserved.
//

import UIKit


class ChooseDayOfWeekViewController: UIViewController {
    
    @IBOutlet private var dayButtons: [UIButton]!

    static func present(_ context: UINavigationController) {
        let controller: ChooseDayOfWeekViewController = ChooseDayOfWeekViewController.createFromStoryboard()

        context.present(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        configureButtons()
    }
    
    private func configureButtons() {
        dayButtons.forEach { (button) in
            button.contentHorizontalAlignment = .left
            button.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0)
        }
    }
    
    @IBAction func onButtonTap(_ sender: UIButton) {
        print("\(sender.tag)")
    }
    
}
