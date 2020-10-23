//
//  FollowersListViewController.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 10/18/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

class FollowersListViewController: UIViewController {
    
    var username : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: true)
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkingManager.shared.getFollowers(for: username, page: 1) { (followers, errormesage) in
            guard let followers = followers else {
                self.presentAlertOnMainThread(title: "Bad stuff happend", message: errormesage!, buttonTitle: "Ok")
                return
            }
            print(followers)
    }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
