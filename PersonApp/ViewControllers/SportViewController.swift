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
    
    private func choiceTypeOfSports() {
        
        let elementPicker = UIPickerView()
        elementPicker.delegate = self
        
        typeOfSportTextField.inputView = elementPicker
    }
    
    func createToolbar() {
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(dismissKeyboard)
        )
        
        let flexBarButton = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil
        )
        
        toolbar.setItems([flexBarButton, doneButton], animated: true)
        toolbar.isUserInteractionEnabled = true
        
        typeOfSportTextField.inputAccessoryView = toolbar
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension SportViewController: UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        user.sport.type.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        user.sport.type[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        selectedElement = user.sport.type[row]
        typeOfSportTextField.text = selectedElement
        selectedElement = String(user.sport.description[row])
        descriptionLabel.text = selectedElement
    }
}
