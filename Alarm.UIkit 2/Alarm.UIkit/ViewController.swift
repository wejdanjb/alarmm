//
//  ViewController.swift
//  Alarm.UIkit
//
//  Created by Wejdan Alkhaldi on 09/04/1443 AH.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate ,UITableViewDataSource {

var alarms = [
Alarm("2 pm", "sunday"),
Alarm("3 pm", "Friday"),
Alarm("4 pm", "evryday"),
Alarm("5 pm", "monday"),
Alarm("6 pm", "sunday"),
]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellAlarmTableViewCell") as! CellAlarmTableViewCell
        
        cell.timeLabel.text = alarms[indexPath.row].time
        cell.dayLabel.text = alarms[indexPath.row].day
        
        return cell
    }
    
    @IBOutlet weak var tv: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Alarm"
        
        tv.delegate = self
        tv.dataSource = self
    }


}

