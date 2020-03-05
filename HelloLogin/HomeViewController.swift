//
//  HomeViewController.swift
//  HelloLogin
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController
{

    @IBOutlet weak var lblWelcome: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let ud=UserDefaults.standard
        let username=ud.string(forKey: "username")
        if let nm=username
        {
            lblWelcome.text="Welcome to your HomeScreen, \(nm)"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
