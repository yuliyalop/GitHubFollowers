//
//  FavoritesViewController.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 10/18/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import UIKit

class FavoritesViewController: DataLoadingViewController {

        let tableView               = UITableView()
        var favorites: [Follower]   = []

        
        override func viewDidLoad() {
            super.viewDidLoad()
            configureViewController()
            configureTableView()
        }
        
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            getFavorites()
        }
        
        
        func configureViewController() {
            view.backgroundColor    = .systemBackground
            title                   = "Favorites"
            navigationController?.navigationBar.prefersLargeTitles = true
        }
        
        
        func configureTableView() {
            view.addSubview(tableView)
            
            tableView.frame         = view.bounds
            tableView.rowHeight     = 80
            tableView.delegate      = self
            tableView.dataSource    = self
            tableView.removeExcessCells() 
            
            tableView.register(FavoriteTableViewCell.self, forCellReuseIdentifier: FavoriteTableViewCell.reuseID)
        }
        
        
        func getFavorites() {
            PersitenceManager.retrieveFavorites { [weak self] result in
                guard let self = self else { return }
                
                switch result {
                case .success(let favorites):
                    if favorites.isEmpty {
                        self.showEmptyStateView(with: "No Favorites?\nAdd one on the follower screen.", in: self.view)
                    } else  {
                        self.favorites = favorites
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                            self.view.bringSubviewToFront(self.tableView)
                        }
                    }
                    
                case .failure(let error):
                    self.presentAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
                }
            }
        }
    }


    extension FavoritesViewController: UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return favorites.count
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteTableViewCell.reuseID) as! FavoriteTableViewCell
            let favorite = favorites[indexPath.row]
            cell.set(favorite: favorite)
            return cell
        }
        
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let favorite    = favorites[indexPath.row]
            let destVC      = FollowersListViewController (username: favorite.login)
            
            navigationController?.pushViewController(destVC, animated: true)
        }
        
        
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            guard editingStyle == .delete else { return }
            
            let favorite = favorites[indexPath.row]

            PersitenceManager.updateWith(favorite: favorite, actionType: .remove) { [weak self] error in
                guard let self = self else { return }
                guard let error = error else {
                    self.favorites.remove(at: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .left)
                    return
                    
                }
                self.presentAlertOnMainThread(title: "Unable to remove", message: error.rawValue, buttonTitle: "Ok")
            }
        }

}
