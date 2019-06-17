//
//  MyProtoTableViewCell.swift
//  IdleTimer
//
//  Created by JKim on 2016. 12. 9..
//  Copyright © 2016년 Sanghoon Han. All rights reserved.
//

import UIKit

class MyProtoTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var attain: UILabel!
    @IBOutlet weak var minute: UILabel!
    @IBOutlet weak var success: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
