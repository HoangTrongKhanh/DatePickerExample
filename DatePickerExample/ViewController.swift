//
//  ViewController.swift
//  DatePickerExample
//
//  Created by Hoàng Khánh on 4/11/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        datePicker.datePickerMode = .dateAndTime
        datePicker.minimumDate = Date.calculateDate(day: 1, month: 1, year: 2000, hour: 0, minute: 0)
        datePicker.maximumDate = Date.calculateDate(day: 31, month: 12, year: 2100, hour: 0, minute: 0)
    }
    
    @IBAction func valueChanged(sender: UIDatePicker, forEvent event: UIEvent) {
        labelDate.text = "Day: \(sender.date.getDayMonthYearHourMinuteSecond().day) Month: \(sender.date.getDayMonthYearHourMinuteSecond().month) Year: \(sender.date.getDayMonthYearHourMinuteSecond().year)"
        
        labelTime.text = "Hour: \(sender.date.getDayMonthYearHourMinuteSecond().hour) Minute: \(sender.date.getDayMonthYearHourMinuteSecond().minute)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

