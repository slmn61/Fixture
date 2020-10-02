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
    
    var line1 = FixtureData(home: "TS", away: "GS", homeScore: 5, awayScore: 1)
    var line2 = FixtureData(home: "FB", away: "TS", homeScore: 0, awayScore: 10)
    var line3 = FixtureData(home: "BJK", away: "TS", homeScore: 0, awayScore: 8)
    
    
    
    var arr: [FixtureData] = []
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 120
        
        arr.append(line1)
        arr.append(line2)
        arr.append(line3)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let value = arr[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! TableViewCell
        cell.home.text = value.home
        cell.away.text = value.away
        cell.homeScore.text = String(value.homeScore)
        cell.awayScore.text = String(value.awayScore)
        //cell.heightAnchor.constraint(equalToConstant: CGFloat(300))
        
        return cell
    }
}
