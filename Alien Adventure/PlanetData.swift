//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "json")
        let rawDataFileJSON = try! Data(contentsOf: dataFileURL!)
        
        var dataFileDictionariesFromJSON: [[String: AnyObject]]!
        do {
            dataFileDictionariesFromJSON = try!
                JSONSerialization.jsonObject(with: rawDataFileJSON, options: JSONSerialization.ReadingOptions()) as! [[String: AnyObject]]
        }
        
      
        var highestScore = 1
        var totalPoints = Int()
        var highestPlanet = ""
       
        for item in dataFileDictionariesFromJSON {
            if let name = item["Name"] as? String {
                print(name)
            if let commonItemsDetected = item["CommonItemsDetected"] as? Int {
               print(commonItemsDetected)
            if let uncommonItemsDetected = item["UncommonItemsDetected"] as? Int {
                print(uncommonItemsDetected)
            if let rareItemsDetected = item["RareItemsDetected"] as? Int {
                print(rareItemsDetected)
            if let legendaryItemsDetected = item["LegendaryItemsDetected"] as? Int {
                print(legendaryItemsDetected)
            totalPoints = ((commonItemsDetected) + (uncommonItemsDetected * 2) + (rareItemsDetected * 3) + (legendaryItemsDetected * 4))
                        print(totalPoints)
                if totalPoints > highestScore {
                    highestPlanet = name
                    highestScore = totalPoints
                }
                    }
                }
                }
        }
            
    }
}
        return highestPlanet
}
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
