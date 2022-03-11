//
//  DataPersonViewController.swift
//  PersonApp
//
//  Created by Alexey on 11.03.2022.
//

import UIKit

class DataPersonViewController: UIViewController {
    
    @IBOutlet var ageLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageLabel.text = String(user.userInfo.age)
    }
}
