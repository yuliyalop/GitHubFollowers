//
//  DataLoadingViewController.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 4.12.20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

class DataLoadingViewController: UIViewController {

    var containerView: UIView!

    func showLoadingView() {
        containerView = UIView(frame: view.bounds)
        view.addSubview(containerView)
        containerView.backgroundColor = .systemBackground
        containerView.alpha = 0
        
        UIView.animate(withDuration: 0.25, animations: {self.containerView.alpha = 0.8 })
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        containerView.addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        activityIndicator.startAnimating()
    }
    
    func dismissLoadingView() {
        DispatchQueue.main.async {
            self.containerView.removeFromSuperview()
            self.containerView = nil
        }
    }
    
    func showEmptyStateView(with message: String, in view:UIView) {
        let emptyState = EmptyStateView(message: message)
        emptyState.frame = view.bounds
        view.addSubview(emptyState)
    }


}
