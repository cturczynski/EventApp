//
//  RegisterViewController.swift
//  EventsApp
//
//  Created by Cturczynski on 4/7/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController
{
    @IBOutlet weak var passwordtextField: UITextField!

    @IBOutlet weak var usernameTextFields: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    @IBAction func onRegisterButtonTapped(sender: UIButton)
    {
        if usernameTextFields.text == "" || passwordtextField.text == ""
        {
            showAlert("Please enter a username and password", nil, self)
        }
        else
        {
            User.registerNewUser(usernameTextFields.text, password: passwordtextField.text, completed: { (result, error) -> Void in
                if error != nil
                {
                    showAlertWithError(error, self)
                }
                else
                {
                    self.dismissViewControllerAnimated(true, completion: nil)
                }
            })
        }
    }
}
