//
//  ViewController.swift
//  GalaxyTest
//
//  Created by Alexander Stos on 6/10/20.
//  Copyright © 2020 Alexander Stos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var schemeManager: SchemeManager?
    var schemeService = SchemeService()
    var schemeCache = SchemeCache()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let defaultScheme = Scheme(version: 1, chatHosts: [], httpHosts: [:], providers: [], isOutdated: false)
        schemeManager = SchemeManager(defaultScheme: defaultScheme, source: schemeService, cache: schemeCache)
    }


}

