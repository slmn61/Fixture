//
//  ViewController.swift
//  Fixture
//
//  Created by selman birinci on 9/16/20.
//  Copyright © 2020 birinci. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arr = ["Selman", "Alyssa", "Kuma"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 120
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let value = arr[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! TableViewCell
        cell.home.text = "FB"
        cell.away.text = "BJK"
        //cell.heightAnchor.constraint(equalToConstant: CGFloat(300))
        
        return cell
           
    }
    
    

}

