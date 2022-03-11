//
//  EducationViewController.swift
//  PersonApp
//
//  Created by Alexey on 11.03.2022.
//

import UIKit

class EducationViewController: UIViewController {
    
    @IBOutlet var universityLabel: UILabel!
    @IBOutlet var facultiesLabel: UILabel!
    @IBOutlet var departmentsLabel: UILabel!
    @IBOutlet var specialityLabel: UILabel!
    @IBOutlet var yearsOfStudyLabel: UILabel!
    @IBOutlet var topicOfDiplomaLabel: UILabel!
    @IBOutlet var averageMarkLabel: UILabel!
    @IBOutlet var graduationYearLabel: UILabel!

    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        universityLabel.text = user.education.university
        facultiesLabel.text = user.education.faculties
        departmentsLabel.text = user.education.departments
        specialityLabel.text = user.education.specialty
        yearsOfStudyLabel.text = String(user.education.yearsOfStudy)
        topicOfDiplomaLabel.text = user.education.topicOfDiploma
        averageMarkLabel.text = String(user.education.averageMark)
        graduationYearLabel.text = String(user.education.graduationYear)
    }
}
