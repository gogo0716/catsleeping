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
    @IBOutlet var testImageView: UIImageView!
    //UIDeviceクラスを呼ぶ
    let myDevice: UIDevice = UIDevice.current
    private var myTextField: UITextField!
    var testText:String = "12"
    var sleepDate: Date = Date()
    var totalsleeptime: TimeInterval = 0
    var sleepdate: [TimeInterval] = []

    
  
    
    
    
    
    
    let ud = UserDefaults.standard
    
    // viewが呼ばれる直前に呼ばれるメソッド
    
    override func viewDidLoad() {
        testImageView.image = UIImage(named: "haikei.jpg")
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
        totalsleeptime = ud.double(forKey: "sleep")

    }
    
    
    @IBAction func kinsetsuOn(_ sender: UIButton) {
        sleepDate = Date()
    }
    
    @IBAction func kinsetsuOff(_ sender: UIButton) {
        stopsleep()
    }
    
    
    func proximitySensorStateDidChange(notification: NSNotification){
        if myDevice.proximityState == true {
            //近づいた時
            sleepDate = Date()
        }else{
            //寝た合計を保存
            stopsleep()
            
            //離れた時
        }
        
        
        
        
    }
    func stopsleep() {
        let awakeTime = Date()
        let span = awakeTime.timeIntervalSince(sleepDate)
        print("\(span)秒寝た")
        totalsleeptime += span // spanは次に足す奴
        ud.set(totalsleeptime, forKey:"sleep")
        
        
        
        // sleepdateにspanを要素として追加する
        sleepdate += [span]
        ud.set(sleepdate, forKey: "a")
        
        //        UserDefaults.standard.string(forKey: "sleep")
    }
    
    
    @IBAction func goBack(_ segue:UIStoryboardSegue) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
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
