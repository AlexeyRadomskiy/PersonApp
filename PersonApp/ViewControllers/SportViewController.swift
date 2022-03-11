//
//  SportViewController.swift
//  PersonApp
//
//  Created by Alexey on 11.03.2022.
//

import UIKit

class SportViewController: UIViewController {
    
    @IBOutlet var typeOfSportTextField: UITextField!
    @IBOutlet var descriptionLabel: UILabel!
    
    var user: User!
    
    private var selectedElement: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionLabel.text = ""
        
        choiceTypeOfSports()
        createToolbar()
    }
    
    func choiceTypeOfSports() {
        
        let elementPicker = UIPickerView()
        elementPicker.delegate = self
        
        typeOfSportTextField.inputView = elementPicker
    }
    
    func createToolbar() {
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done",
                                         style: .plain,
                                         target: self,
                                         action: #selector(dismissKeyboard))
        
        toolbar.setItems([doneButton], animated: true)
        toolbar.isUserInteractionEnabled = true
        
        typeOfSportTextField.inputAccessoryView = toolbar
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension SportViewController: UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return user.sport.type.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return user.sport.type[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        selectedElement = user.sport.type[row]
        typeOfSportTextField.text = selectedElement
        selectedElement = String(user.sport.description[row])
        descriptionLabel.text = selectedElement
    }
}
