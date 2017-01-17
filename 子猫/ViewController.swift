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
    @IBAction func goBack(_ segue:UIStoryboardSegue) {}
    
    @IBAction func goNext(_ sender:UIButton) {
        let next = storyboard!.instantiateViewController(withIdentifier: "nextView")
        self.present(next,animated: true, completion: nil)
        
    }
    
    // vv
    @IBAction func goNextBySegue(_ sender:UIButton) {
        performSegue(withIdentifier: "nextSegue", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = getNowClockString()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getNowClockString() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd' 'HH:mm:ss"
        let now = Date()
        return formatter.string(from: now)
    }
    
    
    
    
    
    
    
    
    

}

