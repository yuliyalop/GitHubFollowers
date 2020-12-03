//
//  MainTabBarController.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 25.11.20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNC(), createFavoriteNC()]
        
    }
        func createSearchNC() -> UINavigationController {
              let searchNC = SearchViewController()
              searchNC.title = "Search"
              searchNC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
              return UINavigationController(rootViewController: searchNC)
          }
          
          func createFavoriteNC() -> UINavigationController {
              let favoriteNC = FavoritesViewController()
              favoriteNC.title = "Favorites"
              favoriteNC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
              return UINavigationController(rootViewController: favoriteNC)
          }

}
