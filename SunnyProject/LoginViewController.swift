//
//  LoginViewController.swift
//  SunnyProject
//
//  Created by Owner on 4/8/17.
//  Copyright © 2017 Owner. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userID: UITextField!
    @IBOutlet weak var password: UITextField!
    
    func login()
    {
        let password1 = password.text
        let userName = userID.text
        
        UserDefaults.standard.setValue("password1", forKey: "Password")
        UserDefaults.standard.setValue(userName, forKey: "Username")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
