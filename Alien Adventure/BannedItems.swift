//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        let dataFileArray = NSArray(contentsOf: dataFileURL) as! [[String: AnyObject]]
        var itemsBanned = [Int]()
        
        
        for item in dataFileArray{
         
                if let itemID = item["ItemID"] as? Int {
                    print(itemID)
                if let name = item["Name"] as? String {
                    print(name)
                if let historicalData = item["HistoricalData"] as? [String: AnyObject] {
                if let carbonAge = historicalData["CarbonAge"] as? Int {
                    print(carbonAge)
                if carbonAge < 30 && name.contains("Laser") {
                    itemsBanned.append(itemID)
                        print(itemsBanned)
                                }
                             
                            }
                        }
                    }
                }
            }
        return itemsBanned
    }
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
