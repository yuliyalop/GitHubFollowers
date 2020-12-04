//
//  UITableView+Ext.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 4.12.20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
