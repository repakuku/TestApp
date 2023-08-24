//
//  SoundBar.swift
//  TestApp
//
//  Created by Alexey Turulin on 8/23/23.
//

import Foundation

class SoundBar {
    private(set) var volume = 0
    
    func setVolume(to value: Int) {
        volume = min(max(value, 0), 100)
    }
}
