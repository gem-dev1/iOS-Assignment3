//
//  QuestionBuilderViewController.swift
//  iOS-Assignment3
//
//  Created by user239796 on 3/29/24.
//

import UIKit

class QuestionBuilderViewController: UIViewController {
    
    
    @IBOutlet weak var questionInput: UITextField!
    @IBOutlet weak var correctInput: UITextField!
    @IBOutlet weak var incorrect1Input: UITextField!
    @IBOutlet weak var incorrect2Input: UITextField!
    @IBOutlet weak var incorrect3Input: UITextField!
    
    var questionList = (UIApplication.shared.delegate as? AppDelegate)!.allQuestions
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func onSaveQuestion(_ sender: Any) {
        let checkInputs = validateInputs()
        if validateInputs() {
            let newQuestion = Question(q: questionInput.text!, c: correctInput.text!, i1: incorrect1Input.text!, i2: incorrect2Input.text!, i3: incorrect3Input.text!)
            
            questionList.append(newQuestion)
            
            (UIApplication.shared.delegate as? AppDelegate)!.allQuestions = questionList
            navigationController?.popViewController(animated: true)
            
        } else {
            let alert = UIAlertController(title: "Please make sure all the inputs are valid", message: "", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .cancel))
            present(alert, animated: true)
        }
    }
    
    @IBAction func onCancelQuestion(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    func validateInputs() -> Bool {
        var validInput = true
        if let qinput = questionInput.text {
            validInput = true
        } else if let cinput = correctInput.text{
            validInput = true
        } else if let i1input = incorrect1Input.text{
            validInput = true
        } else if let i2input = incorrect2Input.text{
            validInput = true
        } else if let i3input = incorrect3Input.text{
            validInput = true
        } else {
            validInput = false
        }
        
        return validInput
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
