//
//  CellAlarmTableViewCell.swift
//  Alarm.UIkit
//
//  Created by Wejdan Alkhaldi on 09/04/1443 AH.
//

import UIKit

class CellAlarmTableViewCell: UITableViewCell {
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBOutlet weak var dayLabel: UILabel!
    
    @IBOutlet weak var `switch`: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
