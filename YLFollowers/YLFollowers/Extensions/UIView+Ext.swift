//
//  UIView+Ext.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 4.12.20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
