import UIKit


extension UIView {
    
    class func fromNib<T: UIView>() -> T {
        let className = String(describing: T.self)
        return Bundle.main.loadNibNamed(className, owner: nil, options: nil)![0] as! T
    }
    
}

