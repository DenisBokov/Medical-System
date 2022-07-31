//
//  RegisterViewController.swift
//  Medical System
//
//  Created by Denis Bokov on 28.07.2022.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet var birthdateTextFild: UITextField!
    @IBOutlet var phoneNumberTextField: UITextField!
    
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        birthdateTextFild.inputView = datePicker
        datePicker.datePickerMode = .date
        textFieldDidBeginEditing(birthdateTextFild)
        textFieldDidBeginEditing(phoneNumberTextField)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc private func didTapDone() {
        getDateFromPicker()
        view.endEditing(true)
    }
    
    private func getDateFromPicker() {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        birthdateTextFild.text = formatter.string(for: datePicker.date)
    }

}

extension RegisterViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.sizeToFit()
        textField.inputAccessoryView = keyboardToolbar
        
        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(didTapDone)
        )
        
        let flexBarButton = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil
        )
        
        keyboardToolbar.items = [flexBarButton, doneButton]
    }
}

extension RegisterViewController {
    private func shoeAlert(wiht titel: String, and massage: String) {
        let alert = UIAlertController(title: titel, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
