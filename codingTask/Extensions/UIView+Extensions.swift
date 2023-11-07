//
//  UIView+Extensions.swift
//  codingTask
//
//  Created by Oleg Kasarin on 07/11/2023.
//

import Foundation
import Foundation
import UIKit

extension UIView {
    
    // MARK: - UIView loading
    
    static func fromNib<T: UIView>(withOwner: Any?) -> T? {
        let nib = UINib(nibName: String(describing: self), bundle: Bundle.main)
        
        if let v = nib.instantiate(withOwner: withOwner, options: nil)[0] as? T {
            return v
        } else {
            return nil
        }
    }
}
