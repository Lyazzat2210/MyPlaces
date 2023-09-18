//
//  PlaceModel.swift
//  MyPlacesApp
//
//  Created by Lyazzat Mussapirova on 10.07.2023.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    convenience init(name: String, location: String?, type: String?, imageData: Data?) {
        self.init()
        self.name = name
        self.location = location
        self.type = type
        self.imageData = imageData
    }
    
    let restaurantNames = [
            "Burger Heroes", "Kitchen", "BonSai", "Дастархан", "Sherlock Holmes", "OceanBusket"
        ]

    func savePlaces() {

        for place in restaurantNames {

            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else {return}
            let newPlace = Place()

            newPlace.name = place
            newPlace.location = "Almaty"
            newPlace.type = "Restaurant"
            newPlace.imageData = imageData

            StorageManager.saveObject(newPlace)

         }


    }
}
