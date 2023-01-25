//
//  ViewController.swift
//  PRe-Work Pappas
//
//  Created by Nicholas Pappas on 1/22/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    @IBOutlet weak var YearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var MorePetsSwitch: UISwitch!
     
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var NumberOfPetsSwitch: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func StepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
        
    }
 
    
    @IBAction func IntroduceButtonTapped(_ sender: UIButton) {
        let year = YearSegmentedControl.titleForSegment(at: YearSegmentedControl.selectedSegmentIndex)
        let introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!).
        I; am; currently; in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs.
               It is \(MorePetsSwitch.isOn) that I want more pets."
               
               print(introduction)
        let year = YearSegmentedControl.titleForSegment(at: YearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!).
        I; am; currently; in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs.
                 It is \(MorePetsSwitch.isOn) that I want more pets."
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
        
    }
}

