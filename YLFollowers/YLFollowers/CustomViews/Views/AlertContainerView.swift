//
//  AlertContainerView.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 4.12.20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

class AlertContainerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
      backgroundColor = .systemBackground
      layer.cornerRadius = 16
      layer.borderWidth = 2
      layer.borderColor = UIColor.white.cgColor
      translatesAutoresizingMaskIntoConstraints = false
    }
}
