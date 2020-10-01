//
//  TableViewCell.swift
//  Fixture
//
//  Created by selman birinci on 9/30/20.
//  Copyright © 2020 birinci. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var home: UILabel!
    @IBOutlet weak var away: UILabel!
    @IBOutlet weak var content: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //content.heightAnchor{
            
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
