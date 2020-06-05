//
//  Environment.swift
//  EnvironmentsApp
//
//  Created by Mohamed Nasser on 6/5/20.
//  Copyright © 2020 Mohamed Nasser. All rights reserved.
//

import Foundation

enum Environment: String {
    
    case stage = "stage"
    case production = "production"

    var baseURL: String {
        switch self {
            case .stage: return "https://api.stage.com"
            case .production: return "https://api.production.com"
        }
    }

    var token: String {
        switch self {
            case .stage: return "ertyuiop"
            case .production: return "zxcvbnm"
        }
    }
    
    static var current: Environment {
        let currentEnvironment = UserDefaults.standard.string(forKey: "environment")
        return Environment(rawValue: currentEnvironment ?? "") ?? Environment.production
    }
}
