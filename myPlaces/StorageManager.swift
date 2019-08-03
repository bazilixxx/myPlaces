//
//  StorageManager.swift
//  myPlaces
//
//  Created by Punchman on 02/08/2019.
//  Copyright © 2019 bazilixxx. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func savedObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
}
