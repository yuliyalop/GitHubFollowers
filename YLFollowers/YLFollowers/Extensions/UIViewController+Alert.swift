//
//  UIViewController+Alert.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 10/18/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = AllertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
