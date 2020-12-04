//
//  EmptyStateView.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 10/31/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

class EmptyStateView: UIView {
    
    let messageLabel = TitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame:frame)
        self.addSubviews(messageLabel,logoImageView)
        configureMessageLabel()
        configureLogoImageView() 
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(message: String) {
        self.init(frame:.zero)
        messageLabel.text = message
    }
    
    private func configureMessageLabel() {
        messageLabel.numberOfLines = 3
        messageLabel.textColor = .secondaryLabel
        
        let messageLabelCenterYConstant : CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ?  -90 : -150
        
        let messageLabelYConstraint = messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: messageLabelCenterYConstant)
        messageLabelYConstraint.isActive = true
        
        NSLayoutConstraint.activate([
        messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
        messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
        messageLabel.heightAnchor.constraint(equalToConstant: 200),
        ])
    }
    
    private func configureLogoImageView(){
        logoImageView.image = UIImage(named: "empty-state-logo")
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let logoImageBottomConstant : CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ?  80 : 40
        
        let logoImageBottomConstraint = logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: logoImageBottomConstant )
        logoImageBottomConstraint.isActive = true
        
        NSLayoutConstraint.activate([

            
            logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170)
            
        ])
    }
}
