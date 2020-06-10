//
//  SchemeSource.swift
//  GalaxyTest
//
//  Created by Alexander Stos on 6/10/20.
//  Copyright © 2020 Alexander Stos. All rights reserved.
//

import Foundation

protocol SchemeSource {
    func getScheme(_ arg: [String]) -> Scheme?
    func getSchemeOutside() -> Scheme?
}
