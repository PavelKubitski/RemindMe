//
//  UIViewController+utils.swift
//  RemindMe
//
//  Created by Pavel Kubitski on 03.02.18.
//  Copyright © 2018 Pavel Kubitski. All rights reserved.
//

import UIKit

extension UIViewController {
    
    static func createFromStoryboard<T: UIViewController>() -> T {
        let className = String(describing: T.self)
        let storyboard = UIStoryboard(name: className, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: className)
        
        return controller as! T
    }

}
