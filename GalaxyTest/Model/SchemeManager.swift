//
//  SchemeManager.swift
//  GalaxyTest
//
//  Created by Alexander Stos on 6/10/20.
//  Copyright © 2020 Alexander Stos. All rights reserved.
//

import Foundation

class SchemeManager {
    var defaultScheme: Scheme
    var source: SchemeSource
    var cache: SchemeCacheGateway
    
    // default
    init(defaultScheme: Scheme, source: SchemeSource, cache: SchemeCacheGateway) {
        self.defaultScheme = defaultScheme
        self.source = source
        self.cache = cache
    }
}

// MARK: SchemeRepository
extension SchemeManager: SchemeRepository {
    func getScheme() -> Scheme {
        source.getSchemeOutside() ?? defaultScheme
    }
    
    func getCachedScheme() -> Scheme {
        cache.getScheme() ?? defaultScheme
    }
    
    func setCachedSchemeOutdated() {
        //
    }
    
    func getNetworkScheme() -> Scheme {
        source.getSchemeOutside() ?? defaultScheme
    }
    
    
}
