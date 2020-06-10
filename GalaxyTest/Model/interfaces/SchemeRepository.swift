//
//  SchemeRepository.swift
//  GalaxyTest
//
//  Created by Alexander Stos on 6/10/20.
//  Copyright © 2020 Alexander Stos. All rights reserved.
//

import Foundation

protocol SchemeRepository {
    func getScheme() -> Scheme
    func getCachedScheme() -> Scheme
    func setCachedSchemeOutdated()
    func getNetworkScheme() -> Scheme
}
