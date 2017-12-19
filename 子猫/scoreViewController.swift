//
//  scoreViewController.swift
//  子猫
//
//  Created by 川口剛司 on 2017/11/07.
//  Copyright © 2017年 川口剛司. All rights reserved.
//

import UIKit

class scoreViewController: UIViewController, UITableViewDataSource {
    @IBAction func goBack(_ segue:UIStoryboardSegue) {}

    
    @IBOutlet var table: UITableView!
    
    let userDefaults = UserDefaults.standard
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        userDefaults.set("01", forKey: "time")
        userDefaults.array(forKey: "time")
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memo")
        cell?.textLabel?.text = "メモ"
        return cell!
    }
    @IBAction func score(){
        userDefaults.bool(forKey: "sleep")
   
    }
    
    
    
    
    
    
    
    
    
    
}
