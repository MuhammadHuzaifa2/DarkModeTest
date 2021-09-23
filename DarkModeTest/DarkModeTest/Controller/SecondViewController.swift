//
//  SecondViewController.swift
//  DarkModeTest
//
//  Created by muhammad huzaifa on 9/22/21.
//

import UIKit

//This is Second VC and we made this VC 's User Interface Style to Dark so it will always be in Dark mode

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // this is how we set a user interface to either dark or light mode and this wont change 
        overrideUserInterfaceStyle = .dark
    }
}
