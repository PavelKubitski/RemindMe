//
//  ChooseDateViewController.swift
//  RemindMe
//
//  Created by Pavel Kubitski on 28.01.18.
//  Copyright © 2018 Pavel Kubitski. All rights reserved.
//

import UIKit


class ChooseDateViewController: UIViewController {
    
    @IBOutlet weak var picker: UIDatePicker!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var readyButton: UIButton!
    
    
    static func present(_ context: UINavigationController) {
        context.present(create(), animated: true, completion: nil)
    }
    
    private static func create() -> ChooseDateViewController {
        let storyboard = UIStoryboard(name: "ChooseDateViewController", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ChooseDateViewController")
        
        return controller as! ChooseDateViewController
    }
    
    @IBAction func onCancelButtonWasPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onReadyButtonWasPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
