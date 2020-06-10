//
//  SchemeManager.swift
//  GalaxyTest
//
//  Created by Alexander Stos on 6/10/20.
//  Copyright © 2020 Alexander Stos. All rights reserved.
//

import Foundation

class SchemeManager {
    var scheme: Scheme
    var source: SchemeSource
    var cache: SchemeCacheGateway
    
    // default
    init(scheme: Scheme, source: SchemeSource, cache: SchemeCacheGateway) {
        self.scheme = scheme
        self.source = source
        self.cache = cache
    }
}

// MARK: SchemeRepository
extension SchemeManager: SchemeRepository {
    func getScheme() -> Scheme {
        scheme
    }
    
    func getCachedScheme() -> Scheme {
        // might be nil
        cache.getScheme()!
    }
    
    func setCachedSchemeOutdated() {
        //
    }
    
    func getNetworkScheme() -> Scheme {
        // might be nil
        source.getSchemeOutside()!
    }
    
    
}
