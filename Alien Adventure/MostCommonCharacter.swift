//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var arrayOfCharacters: [Character] = []
        
        if inventory.isEmpty {
            return nil
        } else {
            for item in inventory {
                for letter in item.name.lowercased().characters  {
                    arrayOfCharacters.append(letter)
                }
                print(arrayOfCharacters)
            }
            var characterDictionary: [Character:Int] = [:]
            for letter in arrayOfCharacters {
                characterDictionary[letter] = (characterDictionary[letter] ?? 0) + 1
            }
            print(characterDictionary)
            var maxValue: Int = 0
            var mostCommon: Character = "a"
            
            for (letter, number) in characterDictionary {
                if number > maxValue {
                    maxValue = number
                    mostCommon = letter
                }
            }
            
        return mostCommon
    }
}
}
