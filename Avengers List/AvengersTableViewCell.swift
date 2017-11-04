//
//  AvengersTableViewCell.swift
//  Avengers List
//
//  Created by Logan Cain on 10/31/17.
//  Copyright © 2017 Logan Cain. All rights reserved.
//

import UIKit

class AvengersTableViewCell: UITableViewCell {


    
    @IBOutlet weak var avengeTitleLabel: UILabel!
    @IBOutlet weak var avengeImageView: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
