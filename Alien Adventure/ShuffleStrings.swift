//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty {
            return true
        }
        
        if s1.characters.count + s2.characters.count != shuffle.characters.count {
            return false
        }
        
        var s1Shuffle = String()
        var s2Shuffle = String()
        
        for n in shuffle.characters {
            if s1.contains(String(n)) {
                s1Shuffle.append(n)
            }
            if s2.contains(String(n)) {
                s2Shuffle.append(n)
            }
        }
        
        if s1Shuffle == s1 && s2Shuffle == s2 {
            return true
        }
        return false
    }
}


