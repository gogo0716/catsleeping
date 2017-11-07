//
//  scoreViewController.swift
//  子猫
//
//  Created by 川口剛司 on 2017/11/07.
//  Copyright © 2017年 川口剛司. All rights reserved.
//

import UIKit

class scoreViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        table.dataSource = self

        // Do any additional setup after loading the view.
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
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
