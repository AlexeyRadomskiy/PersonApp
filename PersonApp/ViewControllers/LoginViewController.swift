//
//  ViewController.swift
//  PersonApp
//
//  Created by Alexey on 11.03.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = User.getUserInfo()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let profileVC = viewController as? ProfileViewController {
                profileVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let myStoryVC = navigationVC.topViewController as! MyStoryViewController
                myStoryVC.user = user
            }
        }
    }

    @IBAction func loginTappedButton() {
        guard let inputLogin = userNameTextField.text,
              !inputLogin.isEmpty,
              userNameTextField.text == user.login,
              passwordTextField.text == user.password
        else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
            return
        }
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        if sender.tag == 0 {
            showAlert(with: "Oops!", and: "Your name is \(user.login) 😉")
            userNameTextField.text = ""
        } else {
            showAlert(with: "Oops!", and: "Your password is \(user.password) 😉")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - UITextFieldDelegate
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginTappedButton()
            performSegue(withIdentifier: "goToTabBarController", sender: nil)
        }
        return true
    }
}
