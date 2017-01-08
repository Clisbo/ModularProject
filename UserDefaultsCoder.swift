//
//  UserDefaultsCoder.swift
//  ModularProject
//
//  Created by Matthew Clisby on 30/12/2016.
//  Copyright © 2016 Matthew Clisby. All rights reserved.
//

import Foundation

class Item :NSObject
{
    var name: String = ""
    var collectionId: Int = 0
    
    init(name: String, collectionId: Int) {
        self.name = name
        self.collectionId = collectionId
    }
    
    init(coder decoder: NSCoder) {
        self.name = decoder.decodeObject(forKey: "name") as! String
        self.collectionId = decoder.decodeInteger(forKey: "collectionId")
    }
    
    func encodeWithCoder(coder: NSCoder) {
        coder.encode(self.name, forKey: "name")
        coder.encodeCInt(Int32(self.collectionId), forKey: "collectionId")
    }
}
