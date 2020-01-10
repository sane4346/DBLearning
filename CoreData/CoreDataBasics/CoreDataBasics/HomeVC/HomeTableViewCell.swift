//
//  HomeTableViewCell.swift
//  CoreDataBasics
//
//  Created by Santosh Chaurasia on 1/10/20.
//  Copyright © 2020 Santosh Chaurasia. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    @IBOutlet weak var className: UILabel!
    @IBOutlet weak var classCount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
