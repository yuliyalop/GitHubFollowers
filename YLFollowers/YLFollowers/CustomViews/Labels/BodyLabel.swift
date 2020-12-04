//
//  BodyLabel.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 10/18/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

class BodyLabel: UILabel {

    override init(frame: CGRect) {
         super.init(frame: frame)
         configure()
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     
    convenience init(textAlignment: NSTextAlignment) {
         self.init(frame: .zero)
         self.textAlignment = textAlignment
        
     }
     
     private func configure() {
        textColor = .secondaryLabel
        font = UIFont.preferredFont(forTextStyle: .body)
        adjustsFontForContentSizeCategory = true
         adjustsFontSizeToFitWidth = true
         minimumScaleFactor = 0.75
         lineBreakMode = .byWordWrapping
         translatesAutoresizingMaskIntoConstraints = false
         
         
     }

}
