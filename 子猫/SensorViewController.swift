//
//  SensorViewController.swift
//  子猫
//
//  Created by 川口剛司 on H29/02/07.
//  Copyright © 平成29年 川口剛司. All rights reserved.
//
//

import UIKit

class SensorViewController: UIViewController {
    @IBOutlet var label: UILabel!
    //UIDeviceクラスを呼ぶ
    let myDevice: UIDevice = UIDevice.current
    private var myTextField: UITextField!
    var testText:String = "12"
    var sleepDate: Date = Date()
    var totalsleeptime: TimeInterval = 0.0
    
    let ud = UserDefaults.standard
    // viewが呼ばれる直前に呼ばれるメソッド
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //近接センサーを有効にする
        myDevice.isProximityMonitoringEnabled = true
        
        //近接センサーの通知設定
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.proximitySensorStateDidChange(notification:)),
            name: NSNotification.Name(rawValue: "UIDeviceProximityStateDidChangeNotification"),
            object: nil
        )
        //近接センサーを通知する
        NotificationCenter.default.post(
            name: NSNotification.Name(rawValue: "UIDeviceProximityStateDidChangeNotification"),
            object: nil
        )
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // userdefaultにデータを文字列で格納
        
        ud.set("12", forKey: "time")
        
    }
    
    func proximitySensorStateDidChange(notification: NSNotification){
        if myDevice.proximityState == true {
            //近づいた時
            sleepDate = Date()
        }else{
            
            //離れた時
        }
        
        
    }
    //寝た合計を保存
    func stopsleep() {
        let awakeTime = Date()
        let span = awakeTime.timeIntervalSince(sleepDate)
        print("\(span)秒寝た")
        totalsleeptime += span
        ud.set(totalsleeptime, forKey:"sleep")
        //        UserDefaults.standard.string(forKey: "sleep")
    }
    
    @IBAction func goBack(_ segue:UIStoryboardSegue) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)}
    
    
    
    // Do any additional setup after loading the view.
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
