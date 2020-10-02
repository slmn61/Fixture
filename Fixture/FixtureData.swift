//
//  FixtureData.swift
//  Fixture
//
//  Created by selman birinci on 10/1/20.
//  Copyright © 2020 birinci. All rights reserved.
//

import Foundation

struct FixtureData {
    var home: String
    var away: String
    var homeScore: Int
    var awayScore: Int
    
    init(home: String, away: String, homeScore: Int, awayScore: Int) {
        self.home = home
        self.away = away
        self.homeScore = homeScore
        self.awayScore = awayScore
    }
}
