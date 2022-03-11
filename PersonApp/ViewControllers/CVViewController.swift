//
//  CVViewController.swift
//  PersonApp
//
//  Created by Alexey on 11.03.2022.
//

import UIKit

class CVViewController: UIViewController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My story"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dataPersonVC = segue.destination as? DataPersonViewController else { return }
        dataPersonVC.user = user
    }
}
