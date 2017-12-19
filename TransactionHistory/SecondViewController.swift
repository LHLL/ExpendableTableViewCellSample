//
//  SecondViewController.swift
//  TransactionHistory
//
//  Created by Xu, Jay on 11/16/17.
//  Copyright © 2017 Xu, Jay. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var data:[[DataBase]]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "ContainerCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "cell")
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
    }
}

extension SecondViewController:UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ContainerCell
        cell.pupulateContainer(using: data[indexPath.section])
        cell.titleLabel.text = "This is \(indexPath.section) row"
        return cell
    }
}

extension SecondViewController:UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let v = UIView()
        v.backgroundColor = .clear
        return v
    }
}
