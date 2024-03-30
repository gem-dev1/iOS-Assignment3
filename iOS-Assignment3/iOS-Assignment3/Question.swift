//
//  Question.swift
//  iOS-Assignment3
//
//  Created by user239796 on 3/29/24.
//

import Foundation

class Question {
    var question: String;
    var correct: String;
    var incorrect1: String;
    var incorrect2: String;
    var incorrect3: String;
    
    init(q: String, c: String, i1: String, i2: String, i3: String){
        self.question = q;
        self.correct = c;
        self.incorrect1 = i1;
        self.incorrect2 = i2;
        self.incorrect3 = i3;
    }
}
