//
//  StorageManager.swift
//  MyPlacesApp
//
//  Created by Lyazzat Mussapirova on 12.07.2023.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
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
