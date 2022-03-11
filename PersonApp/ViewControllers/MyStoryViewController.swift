//
//  CVViewController.swift
//  PersonApp
//
//  Created by Alexey on 11.03.2022.
//

import UIKit

class MyStoryViewController: UIViewController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My story"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "aboutMe":
            guard let aboutMeVC = segue.destination as? AboutMeViewController else { return }
            aboutMeVC.user = user
        case "education":
            guard let educationVC = segue.destination as? EducationViewController else { return }
            educationVC.user = user
        case "sport":
            guard let sportVC = segue.destination as? SportViewController else { return }
            sportVC.user = user
        case "development":
            guard let developmentVC = segue.destination as? DevelopmentViewController else { return }
            developmentVC.user = user
        default:
            guard let appleVC = segue.destination as? AppleViewController else { return }
            appleVC.user = user
        }
    }
}
