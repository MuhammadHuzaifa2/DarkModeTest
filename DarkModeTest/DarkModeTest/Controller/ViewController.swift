//
//  ViewController.swift
//  DarkModeTest
//
//  Created by muhammad huzaifa on 9/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    // for label I gave it default color it adapts the dark and light mode it self on light mode text color will be black and in Dark mode text color will be white
    @IBOutlet weak var myTestLabel: UILabel!
    
    //  for my switch and Text Field and my background i made custom color set in assets that will automatically switch color according to the mode we are in
    @IBOutlet weak var myTestTextField: UITextField!
    @IBOutlet weak var myTestSwitchOutlet: UISwitch!
    
    @IBAction func alertAction(_ sender: Any) {
        showAlert()
    }
    
    @IBAction func myTestSwitch(_ sender: Any) {
        let appDelegate = UIApplication.shared.windows.first
        if myTestSwitchOutlet.isOn{
            appDelegate?.overrideUserInterfaceStyle = .dark
        }
        if !myTestSwitchOutlet.isOn{
            appDelegate?.overrideUserInterfaceStyle = .light
        }
        
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Test Alert", message: "To check the dark mode and light mode", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default))
        present(alert, animated: true, completion: nil)
    }
}


