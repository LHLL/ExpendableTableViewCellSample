//
//  ContainerCell.swift
//  TransactionHistory
//
//  Created by Xu, Jay on 11/16/17.
//  Copyright © 2017 Xu, Jay. All rights reserved.
//

import UIKit

class ContainerCell: UITableViewCell {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var topCircle: UIView!
    @IBOutlet weak var botCircle: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    private var data:[DataBase]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        topCircle.layer.cornerRadius = topCircle.bounds.height/2
        botCircle.layer.cornerRadius = botCircle.bounds.height/2
    }
    
    override func layoutSubviews() {
        print(stackView.bounds)
    }
    
    func pupulateContainer(using data:[DataBase]){
        self.data = data
        stackView.arrangedSubviews.forEach{$0.removeFromSuperview()}
        var count = 0
        while count < data.count {
            defer{count += 1}
            let v = Bundle.main.loadNibNamed("BriefView", owner: nil, options: nil)?.last as! BriefView
            v.layer.borderColor = UIColor.lightGray.cgColor
            v.layer.borderWidth = 1
            v.nameLabel.text = data[count].name
            v.postLabel.text = data[count].post
            v.timeLabel.text = data[count].timeStamp
            stackView.addArrangedSubview(v)
        }
    }
    
}
