//
//  ViewController.swift
//  MultipleEnviroments
//
//  Created by Julio Collado on 3/18/20.
//  Copyright © 2020 Altimetrik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist"), let nsDictionaty = NSDictionary(contentsOfFile: path) {
            let serverURL = nsDictionaty["SERVER_URL"] as? String ?? "default"
            print("ENV SERVER: \(serverURL)")
            let appName = nsDictionaty["CFBundleName"] as? String ?? "default"
            print("Product Name: \(appName)")
        }
    }


}

