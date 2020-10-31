//
//  UIHelper.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 10/29/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

struct UIHelper {
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpasing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimumItemSpasing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        
        return flowLayout
    }
}
