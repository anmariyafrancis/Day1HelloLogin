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
    
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    /*override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }*/
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWelcome.text="LOGIN"
        print(lblWelcome.text!)
        
        // Do any additional setup after loading the view.
    }
    
   /* @IBAction func btnClickMeTap(_ sender: UIButton) {
        lblWelcome.text="Welcome to Your Account"
        
    }*/
    
    @IBAction func btnSubmit(_ sender: UIButton)
    {
        UserDefaults.standard.set(txtUserName.text, forKey: "username")
        UserDefaults.standard.set(txtPassword.text, forKey: "password")
    }
    
    @IBAction func swRemember(_ sender: UISwitch)
    {
        if sender.isOn
        {
           UserDefaults.standard.set(txtUserName.text, forKey: "username")
        }
        else
        {
            UserDefaults.standard.removeObject(forKey: "username")
            UserDefaults.standard.removeObject(forKey: "password")
        }
    }
}

