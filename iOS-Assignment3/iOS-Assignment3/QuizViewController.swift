//
//  QuizViewController.swift
//  iOS-Assignment3
//
//  Created by user239796 on 3/29/24.
//

import UIKit

class QuizViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var optALabel: UILabel!
    @IBOutlet weak var optBLabel: UILabel!
    @IBOutlet weak var optCLabel: UILabel!
    @IBOutlet weak var optDLabel: UILabel!
    
    @IBOutlet weak var optionSegment: UISegmentedControl!
    @IBOutlet weak var quizProgress: UIProgressView!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    
    
    var questionList = (UIApplication.shared.delegate as? AppDelegate)!.allQuestions
    var currentIdx = 0
    var correctAnswer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if questionList.count>0 {
            reloadQuestion()
        }

        // Do any additional setup after loading the view.
    }
    
    func reloadQuestion() {
        questionLabel.text = questionList[currentIdx].question
        var optionArray = [
            questionList[currentIdx].correct,
            questionList[currentIdx].incorrect3,
            questionList[currentIdx].incorrect2,
            questionList[currentIdx].incorrect1
        ]
        optionArray.shuffle()
        
        optALabel.text = optionArray[0]
        optBLabel.text = optionArray[1]
        optCLabel.text = optionArray[2]
        optDLabel.text = optionArray[3]
        correctAnswer = questionList[currentIdx].correct
        
        quizProgress.progress = Float(1.0 / Double(questionList.count))
        
    }
    
    
    @IBAction func onNextButton(_ sender: Any) {
        if currentIdx < questionList.count{
            currentIdx = currentIdx + 1
            
            reloadQuestion()
        }
    }
    
    @IBAction func onPrevButton(_ sender: Any) {
        if currentIdx > 0{
            currentIdx = currentIdx - 1
            
            reloadQuestion()
        }
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
