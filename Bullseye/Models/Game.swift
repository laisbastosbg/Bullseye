//
//  Game.swift
//  Bullseye
//
//  Created by Lais Godinho on 04/03/22.
//

import Foundation

struct Game {
  var target: Int = Int.random(in: 1...100)
  var score: Int = 0
  var round: Int = 1
  
  func points(sliderValue: Int) -> Int {
    let difference = sliderValue - target
    
    return 100 - abs(difference)
  }
}
