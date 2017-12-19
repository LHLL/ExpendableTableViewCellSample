//
//  BriefView.swift
//  TransactionHistory
//
//  Created by Xu, Jay on 11/16/17.
//  Copyright © 2017 Xu, Jay. All rights reserved.
//

import UIKit

class BriefView: UIView {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapHandler))
        addGestureRecognizer(tap)
    }

    @objc
    private func tapHandler(){
        print(nameLabel.text!)
    }
}
