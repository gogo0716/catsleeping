//
//  NextViewController.swift
//  子猫
//
//  Created by 川口剛司 on H29/01/17.
//  Copyright © 平成29年 川口剛司. All rights reserved.
//

import UIKit

class Alarm {
    var title: String?
    var time: Date?
    var duration: Int?
    var musicURL: String?
    var vibration: Bool?
}
func initalAlarm() -> Alarm {
    return  Alarm()
}


class NextViewController: UIViewController {
    
    var alarm: Alarm = initalAlarm()
    
    
    
    
    @IBAction func titleText(_ sender: UITextView) {
        if let text2 = sender.text {
            if let title = String(text2){
                alarm.title = title
            }
            dump(alarm)
        }
        
    }
    @IBAction func onOFFSwitch(_ sender: UISwitch){
        let buttonState: Bool = sender.isOn
        if sender.isOn{
            let vibrationState = Bool(true)
            alarm.vibration = vibrationState
            dump(alarm)
        }else{
            let vibrationState = Bool(false)
            alarm.vibration = vibrationState
            dump(alarm)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
