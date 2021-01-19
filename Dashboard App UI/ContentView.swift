//
//  ContentView.swift
//  Dashboard App UI
//
//  Created by Mahesh Prasad on 15/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// DashBoard Grid Model Data...

struct Fitness : Identifiable {
    
    var id : Int
    var title : String
    var image : String
    var data: String
    var suggest : String
}

// Daily Data...

var fit_Data = [

    Fitness(id: 0, title: "Heart Rate", image: "heart", data: "124 bpm", suggest: "80-120 Healthy"),

    Fitness(id: 1, title: "Sleep", image: "sleep", data: "6h 43m", suggest: "Deep Sleep 5h 13m"),
    
    Fitness(id: 2, title: "Energy Burn", image: "energy", data: "583 kcal", suggest: "Daily Goal 900 kcal"),
            
    Fitness(id: 3, title: "Steps", image: "steps", data: "16,741", suggest: "Daily Goal 20,000 Steps"),
    
    Fitness(id: 4, title: "Running", image: "running", data: "5.3 km", suggest: "Daily Goal 10 km"),
    
    Fitness(id: 5, title: "Cycling", image: "cycle", data: "15.3 km", suggest: "Daily Goal 20 km"),
]

// Monthly Data...

var week_Fit_Data = [

    Fitness(id: 0, title: "Heart Rate", image: "heart", data: "84 bpm", suggest: "80-120 Healthy"),

    Fitness(id: 1, title: "Sleep", image: "sleep", data: "43h 23m", suggest: "Deep Sleep 26h 13m"),
    
    Fitness(id: 2, title: "Energy Burn", image: "energy", data: "3,500 kcal", suggest: "Weekly Goal 4,800 kcal"),
            
    Fitness(id: 3, title: "Steps", image: "steps", data: "17,8741", suggest: "Weekly Goal 25,0000 Steps"),
    
    Fitness(id: 4, title: "Running", image: "running", data: "45.3 km", suggest: "Weekly Goal 70 km"),
    
    Fitness(id: 5, title: "Cycling", image: "cycle", data: "100.3 km", suggest: "Weekly Goal 125 km"),
]
