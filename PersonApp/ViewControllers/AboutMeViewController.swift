//
//  DataPersonViewController.swift
//  PersonApp
//
//  Created by Alexey on 11.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var sexLabel: UILabel!
    @IBOutlet var birthPlaceLabel: UILabel!
    @IBOutlet var cityOfResidenceLabel: UILabel!
    @IBOutlet var favoriteMusicBandLabel: UILabel!
    @IBOutlet var favoriteColorLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.userInfo.name
        surnameLabel.text = user.userInfo.surname
        ageLabel.text = String(user.aboutUser.age)
        sexLabel.text = user.aboutUser.sex
        birthPlaceLabel.text = user.aboutUser.birthPlace
        cityOfResidenceLabel.text = user.aboutUser.cityOfResidence
        favoriteMusicBandLabel.text = user.aboutUser.favoriteMusicBand
        favoriteColorLabel.text = user.aboutUser.favoriteColor
    }
}
