//
//  WorkoutDataSource.swift
//  TestingTabBar
//
//  Created by Antonis Vozikis on 23/11/2018.
//  Copyright © 2018 Antonis Vozikis. All rights reserved.
//

import Foundation
import UIKit

class WorkoutDataSource{
    var workouts:[Workout]
    
    init() {
        workouts = []
        let wk1 = Workout(title: "Jumping Jacks", videoId: "UpH7rm0cYbM", workoutText: "A calisthenic jump done from a standing position with legs together and arms at the sides to a position with the legs apart and the arms over the head.",color:  UIColor.red)
        workouts.append(wk1)
        
        let wk2 = Workout(title: "Wall Sits", videoId: "y-wV4Venusw", workoutText: "A wall sit, also known as a Roman Chair, is an exercise done to strengthen the quadriceps muscles. It is characterized by the two right angles formed by the body, one at the hips and one at the knees.", color: UIColor.blue)
        workouts.append(wk2)
        
        
        let wk4 = Workout(title: "Abdominal Crunches", videoId: "2yOFvV-NSeY", workoutText: "A crunch begins with lying face up on the floor with knees bent. The movement begins by curling the shoulders towards the pelvis. The hands can be behind or beside the neck or crossed over the chest. Injury can be caused by pushing against the head or neck with hands.", color: UIColor.purple)
        workouts.append(wk4)
        
        let wk3 = Workout(title: "Push Ups", videoId: "Eh00_rniF8E", workoutText: "An exercise in which a person lies facing the floor and, keeping their back straight, raises their body by pressing down on their hands.", color: UIColor.green)
        workouts.append(wk3)
        
        
        let wk5 = Workout(title: "Step-ups onto a chair", videoId: "kM2FfDIwsao", workoutText: "To do a step-up, position your chair in front of your body. Stand with your feet about hip-width apart, arms at your sides. Step up onto the seat with one foot, pressing down while bringing your other foot up next to it. ", color: UIColor.black)
        workouts.append(wk5)
        
        let wk6 = Workout(title: "Squats", videoId: "mGvzVjuY8SY", workoutText: "Crouch or sit with one's knees bent and one's heels close to or touching one's buttocks or the back of one's thighs.", color: UIColor.yellow)
        workouts.append(wk6)
        
        let wk7 = Workout(title: "Triceps dips on a chair", videoId: "0326dy_-CzM", workoutText: "Triceps dips on a chair", color: UIColor.gray)
        workouts.append(wk7)
        
    }
    
    func getWorkOuts() -> [Workout]{
        return workouts
    }
    
}
