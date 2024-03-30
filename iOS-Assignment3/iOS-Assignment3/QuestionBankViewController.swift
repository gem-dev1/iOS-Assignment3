//
//  QuestionBankViewController.swift
//  iOS-Assignment3
//
//  Created by user239796 on 3/29/24.
//

import UIKit

class QuestionBankViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var questionTable: UITableView!
    
    var questionList = (UIApplication.shared.delegate as? AppDelegate)!.allQuestions
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? questionBankTableViewCell
            
        cell?.questionLabel?.text = questionList[indexPath.row].question
        cell?.correctLabel?.text = questionList[indexPath.row].correct
        cell?.incorrect1Label?.text = questionList[indexPath.row].incorrect1
        cell?.incorrect2Label?.text = questionList[indexPath.row].incorrect2
        cell?.incorrect3Label?.text = questionList[indexPath.row].incorrect3
        
        return cell!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        questionList = (UIApplication.shared.delegate as? AppDelegate)!.allQuestions
        questionTable.reloadData()
        
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
