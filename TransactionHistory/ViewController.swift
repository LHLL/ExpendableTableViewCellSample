//
//  ViewController.swift
//  TransactionHistory
//
//  Created by Xu, Jay on 11/16/17.
//  Copyright © 2017 Xu, Jay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flag = false
    var db = DataBase()
    var ob:NSKeyValueObservation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareForSwizzling()
        ob = db.observe(\.name, options: [.new]) { (db, change) in
            db.printName()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        db.name = "Joker"
    }
    
    deinit {
        ob.invalidate()
    }
    
    private func prepareForSwizzling(){
        let origin = class_getInstanceMethod(DataBase.self, #selector(db.printName))
        let local = class_getInstanceMethod(ViewController.self, #selector(newPrintMethod))
        method_exchangeImplementations(origin!, local!)
    }
    
    @objc
    private func newPrintMethod(){
        print("print name functionality has been blocked")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let des = segue.destination as! SecondViewController
        des.data = [
            [
                DataBase(n: "John Smith", p: "Hello World!"),
                DataBase(n: "John Doe", p: "As a P164 product manager I would like the customer to be presented with the message stating to confirm the recurrence of Bill Expense right after the customer has activated eBill so that he makes sure the recurrence specified earlier is still correct for eBills"),
                DataBase(n: "Lrina Cresta", p: "we do not care about what payment option is What we care is that customer previously has chosen the recurrence lets say during bill estimate recurrence was setup as Weekly.Then customer added Bill Pay payee to the envelope. And now he is activating eBill Since recurrence setup before couldve been anything customer wanted, for eBill we want recurrence to match the eBill, ideally, so we want customer to stop and think whether we needs to update Recurrence or it is already correct. Does this make sense?"),
                DataBase(n: "John Smith", p: "Hello World!"),
                DataBase(n: "John Doe", p: "As a P164 product manager I would like the customer to be presented with the message stating to confirm the recurrence of Bill Expense right after the customer has activated eBill so that he makes sure the recurrence specified earlier is still correct for eBills"),
                DataBase(n: "Lrina Cresta", p: "we do not care about what payment option is What we care is that customer previously has chosen the recurrence lets say during bill estimate recurrence was setup as Weekly.Then customer added Bill Pay payee to the envelope. And now he is activating eBill Since recurrence setup before couldve been anything customer wanted, for eBill we want recurrence to match the eBill, ideally, so we want customer to stop and think whether we needs to update Recurrence or it is already correct. Does this make sense?")
            ],
            [
                DataBase(n: "John Smith", p: "Hello World!")
            ],
            [
                DataBase(n: "John Smith", p: "Hello World!"),
                DataBase(n: "John Doe", p: "As a P164 product manager I would like the customer to be presented with the message stating to confirm the recurrence of Bill Expense right after the customer has activated eBill so that he makes sure the recurrence specified earlier is still correct for eBills"),
                DataBase(n: "Lrina Cresta", p: "we do not care about what payment option is What we care is that customer previously has chosen the recurrence lets say during bill estimate recurrence was setup as Weekly.Then customer added Bill Pay payee to the envelope. And now he is activating eBill Since recurrence setup before couldve been anything customer wanted, for eBill we want recurrence to match the eBill, ideally, so we want customer to stop and think whether we needs to update Recurrence or it is already correct. Does this make sense?"),
                DataBase(n: "John Smith", p: "Hello World!"),
                DataBase(n: "John Doe", p: "As a P164 product manager I would like the customer to be presented with the message stating to confirm the recurrence of Bill Expense right after the customer has activated eBill so that he makes sure the recurrence specified earlier is still correct for eBills"),
                DataBase(n: "Lrina Cresta", p: "we do not care about what payment option is What we care is that customer previously has chosen the recurrence lets say during bill estimate recurrence was setup as Weekly.Then customer added Bill Pay payee to the envelope. And now he is activating eBill Since recurrence setup before couldve been anything customer wanted, for eBill we want recurrence to match the eBill, ideally, so we want customer to stop and think whether we needs to update Recurrence or it is already correct. Does this make sense?")
            ],
            [
                DataBase(n: "John Smith", p: "Hello World!")
            ],
            [
                DataBase(n: "John Smith", p: "Hello World!"),
                DataBase(n: "John Doe", p: "As a P164 product manager I would like the customer to be presented with the message stating to confirm the recurrence of Bill Expense right after the customer has activated eBill so that he makes sure the recurrence specified earlier is still correct for eBills"),
                DataBase(n: "Lrina Cresta", p: "we do not care about what payment option is What we care is that customer previously has chosen the recurrence lets say during bill estimate recurrence was setup as Weekly.Then customer added Bill Pay payee to the envelope. And now he is activating eBill Since recurrence setup before couldve been anything customer wanted, for eBill we want recurrence to match the eBill, ideally, so we want customer to stop and think whether we needs to update Recurrence or it is already correct. Does this make sense?"),
                DataBase(n: "John Smith", p: "Hello World!"),
                DataBase(n: "John Doe", p: "As a P164 product manager I would like the customer to be presented with the message stating to confirm the recurrence of Bill Expense right after the customer has activated eBill so that he makes sure the recurrence specified earlier is still correct for eBills"),
                DataBase(n: "Lrina Cresta", p: "we do not care about what payment option is What we care is that customer previously has chosen the recurrence lets say during bill estimate recurrence was setup as Weekly.Then customer added Bill Pay payee to the envelope. And now he is activating eBill Since recurrence setup before couldve been anything customer wanted, for eBill we want recurrence to match the eBill, ideally, so we want customer to stop and think whether we needs to update Recurrence or it is already correct. Does this make sense?")
            ],
            [
                DataBase(n: "John Smith", p: "Hello World!")
            ]
        ]
    }
}

