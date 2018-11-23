//
//  Workout.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 23/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import UIKit
import Foundation

class Workout {
    var videoId: String!
    var title: String!
    var workoutText: String!
    var color: UIColor!
    
    init(title: String, videoId: String, workoutText: String, color: UIColor){
        self.videoId = videoId
        self.title = title
        self.workoutText = workoutText
        self.color = color
    }
    
}
