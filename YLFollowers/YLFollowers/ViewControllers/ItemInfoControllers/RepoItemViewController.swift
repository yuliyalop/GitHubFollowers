//
//  RepoItemViewController.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 10/31/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

class RepoItemViewController: ItemInfoViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
        
    }
    private func configureItems(){
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.setBackground(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }

}
