//
//  ViewController.swift
//  HelloLogin
//
//  Created by MacStudent on 2020-02-28.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWelcome.text="LOGIN"
        print(lblWelcome.text!)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnClickMeTap(_ sender: UIButton) {
        lblWelcome.text="Welcome to Your Account"
        
    }
    
}

