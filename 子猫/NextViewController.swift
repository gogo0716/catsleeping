//
//  NextViewController.swift
//  子猫
//
//  Created by 川口剛司 on H29/01/17.
//  Copyright © 平成29年 川口剛司. All rights reserved.
//

import UIKit


class NextViewController: UIViewController {
    
    private var myTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let myDatePicker: UIDatePicker = UIDatePicker()
        myDatePicker.frame = CGRect(x:0, y:50, width:self.view.frame.width, height:200)
        myDatePicker.timeZone = NSTimeZone.local
        myDatePicker.backgroundColor = UIColor.white
        myDatePicker.layer.cornerRadius = 5.0
        myDatePicker.layer.shadowOpacity = 0.5

        myDatePicker.addTarget(self, action: #selector(NextViewController.onDidChangeDate(sender:)), for: .valueChanged)
        
    }
    internal func onDidChangeDate(sender: UIDatePicker){
        let myDateFormatter: DateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "yyyy/MM/dd hh:mm"
        
        let mySelectedDate: NSString = myDateFormatter.string(from: sender.date) as NSString
        myTextField.text = mySelectedDate as String
    
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    

    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
