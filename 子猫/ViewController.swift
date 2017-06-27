//
//  ViewController.swift
//  子猫
//
//  Created by 川口剛司 on H28/11/29.
//  Copyright © 平成28年 川口剛司. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    
    let ud = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "sleep"
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // viewが表示される前に毎回呼ばれるメソッド
    override func viewDidAppear(_ animated: Bool) {
        
        // keyから表示
        let str = ud.string(forKey: "sleep")
        label.text = str
        let sleeptime = ud.double(forKey: "sleep")
        label.text = String(floor(sleeptime))
        
        
   
        
       

        
        print(str)
    }
    
    
    // 画面遷移
    @IBAction func goNext(_ sender:UIButton) {
        performSegue(withIdentifier: "nextView", sender: nil)
        
    }
    
    func getNowClockString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd' 'HH:mm:ss"
        let now = Date()
        return formatter.string(from: now)
    }
    
    
    
    
}

