//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Yagub Shukurov on 1/30/20.
//  Copyright © 2020 Yagub Shukurov. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    
    case invalidUsername = "This username created invalid request"
    case unableToComplete = "Unable to complete this request"
    case invalidResponse = "Invalid response from the server"
    case invalidData = "Data received from the server was invalid"
    
}
