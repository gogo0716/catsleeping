//
//  NextViewController.swift
//  子猫
//
//  Created by 川口剛司 on H29/01/17.
//  Copyright © 平成29年 川口剛司. All rights reserved.
//

import UIKit


class NextViewController: UIViewController {
    @IBOutlet var testImageView: UIImageView!
    
    
    
    private var myTextField: UITextField!
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        testImageView.image = UIImage(named:"haikei.jpg")
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
