//
//  ViewController.swift
//  tableviewRafa
//
//  Created by Fam Aguirre on 25/12/17.
//  Copyright © 2017 rafadiver. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableViewR: UITableView!
    var apps = ["area comun", "lifelike", "restorantes", "donde estoy"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableViewR.delegate = self
        tableViewR.dataSource = self
        // Do any additional setup after loading the view, typically from a nib
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apps.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = apps[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
        performSegue(withIdentifier: "hero", sender: nil)
    }
    
    
  
}

