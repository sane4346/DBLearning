//
//  StudentTableViewCell.swift
//  CoreDataBasics
//
//  Created by Santosh Chaurasia on 1/10/20.
//  Copyright © 2020 Santosh Chaurasia. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var rank: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
