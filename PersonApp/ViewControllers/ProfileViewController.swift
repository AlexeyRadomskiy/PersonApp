//
//  ProfileViewController.swift
//  PersonApp
//
//  Created by Alexey on 11.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    @IBOutlet var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.height / 2
        }
    }
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user.userInfo.name) \(user.userInfo.surname)!"
        
        imageView.image = UIImage(named: user.userInfo.photo)
    }
}
