//
//  AvatarImageView.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 10/28/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

class AvatarImageView: UIImageView {

    let placeholder = UIImage(named: "avatar-placeholder")
    let cache = NetworkingManager.shared.cache
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image  = placeholder
        translatesAutoresizingMaskIntoConstraints = false 
    }
    
}
