//
//  Scheme.swift
//  GalaxyTest
//
//  Created by Alexander Stos on 6/10/20.
//  Copyright © 2020 Alexander Stos. All rights reserved.
//

import Foundation

struct Scheme {
    var version: Int
    var chatHosts: [ChatHost]
    var httpHosts: [String: Alias]
    var providers: [String]
    var isOutdated: Bool
}
