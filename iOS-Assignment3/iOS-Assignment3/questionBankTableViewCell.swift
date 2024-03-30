//
//  questionBankTableViewCell.swift
//  iOS-Assignment3
//
//  Created by user239796 on 3/29/24.
//

import UIKit

class questionBankTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var incorrect1Label: UILabel!
    @IBOutlet weak var incorrect2Label: UILabel!
    @IBOutlet weak var incorrect3Label: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
