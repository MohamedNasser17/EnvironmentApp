//
//  ViewController.swift
//  EnvironmentsApp
//
//  Created by Mohamed Nasser on 6/5/20.
//  Copyright © 2020 Mohamed Nasser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var environmentLabel: UILabel!
    @IBOutlet weak var tokenLabel: UILabel!
    @IBOutlet weak var baseURLLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        environmentLabel.text = Environment.current.rawValue
        tokenLabel.text = Environment.current.token
        baseURLLabel.text = Environment.current.baseURL
    }
}

