//
//  DataBase.swift
//  TransactionHistory
//
//  Created by Xu, Jay on 11/16/17.
//  Copyright © 2017 Xu, Jay. All rights reserved.
//

import Foundation

class DataBase:NSObject{
    
    @objc
    dynamic var name:String = "name"
    @objc
    dynamic var post:String = ""
    @objc
    dynamic var timeStamp:String {
        get {
            return generateTimeStamp()
        }
    }
    
    init(n:String,p:String) {
        name = n
        post = p
    }
    
    override init() {}
    
    @objc
    dynamic func printName(){
        print(name)
    }
    
    private func generateTimeStamp()->String {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm"
        return formatter.string(from: Date())
    }
    
}
