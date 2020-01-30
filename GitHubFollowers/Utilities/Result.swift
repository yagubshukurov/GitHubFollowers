//
//  Result.swift
//  GitHubFollowers
//
//  Created by Yagub Shukurov on 1/30/20.
//  Copyright © 2020 Yagub Shukurov. All rights reserved.
//

import Foundation

enum Result<Success, Failure: Error> {
    case success(Success)
    case failure(Failure)
}
