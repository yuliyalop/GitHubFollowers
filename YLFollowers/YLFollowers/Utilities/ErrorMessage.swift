//
//  ErrorMessage.swift
//  YLFollowers
//
//  Created by Юлия Лопатина on 10/23/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

import Foundation

enum ErrorMessage: String, Error {
    case invalidUsername = "This username create an invalid request. Please, try again"
    case unableToComplete = "Unable to complete your request. Please, check your internet connection"
    case invalidResponse = "Invalid response from the server, please try again"
    case invalidData = "The data, recieved from the server, is invalid. Please, try again"
    case unableToFavorite   = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites = "You've already favorited this user. You must REALLY like them!"
}
