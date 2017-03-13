//
//  ViewController.swift
//  teratail_68864
//
//  Created by Kentarou on 2017/03/12.
//  Copyright © 2017年 Kentarou. All rights reserved.
//

import UIKit
import MCSwipeTableViewCell

class ViewController: UIViewController, UITableViewDataSource {
    
    var dataList = ["task01","task02", "task03","task04"]
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MCSwipeTableViewCell {
            
            // setup
            cell.selectionStyle = .none
            cell.textLabel?.text = dataList[indexPath.row]
            cell.detailTextLabel?.text = "details..."
            cell.detailTextLabel?.textColor = .lightGray
            cell.defaultColor = .lightGray
            cell.firstTrigger = 0.25;
            
            cell.setSwipeGestureWith(UIImageView(image: UIImage(named: "check")), color: UIColor.green, mode: .exit, state: .state1, completionBlock: { [weak self] (cell, state, mode) in
                
                
                if let cell = cell, let indexPath = tableView.indexPath(for: cell) {
                    self?.dataList.remove(at: indexPath.row)
                    // 該当のセルを削除
                    self?.tableView.deleteRows(at: [indexPath], with: .fade)
                }
            })
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return dataList.count
    }
}

