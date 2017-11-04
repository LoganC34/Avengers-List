//
//  AvengerViewController.swift
//  Avengers List
//
//  Created by Logan Cain on 11/1/17.
//  Copyright © 2017 Logan Cain. All rights reserved.
//

import UIKit

class AvengerViewController: UIViewController {

    var avenger: Avenger?
    
  
    @IBOutlet weak var avengerImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var dateJoinedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = avenger?.alias
        nameLabel.text = avenger?.name
        dateJoinedLabel.text = avenger?.dateJoined
        if let imageName = avenger?.imageName {
            avengerImageView.image = UIImage(named: imageName)
            // Do any additional setup after loading the view.
        }
        
        self.avengerImageView.layer.cornerRadius = self.avengerImageView.frame.size.width / 2;
        self.avengerImageView.clipsToBounds = true;
    }
}
