//
//  ContentView.swift
//  PSNightWatch
//
//  Created by Tijo Njaravelil on 12/19/20.
//

import SwiftUI

let nightlyTasks = [
    "Check all doors",
    "Check all windows",
    "Check the safe is locked",
    "Check the mailbox",
    "Inspect security cameras",
    "Clear ice from sidewalk",
    "Document \"Strange and unusual\" occurances"
]

let weeklyTasks = [
    "Check inside all vacant rooms",
    "Check the safe is locked",
    "Check the mailbox",
    "Check if the siren in working"
]

let monthlyTasks = [
    "Last checks",
    "Check the safe is locked",
    "Check the mailbox",
    "Check all the smoke Detectors",
    "Check all the fire alarms"
]

struct ContentView: View {
    var body: some View {
        
        List {
            
            //MARK: NIGHTLY TASKS
            Section (header: HStack {
                Image(systemName: "moon.stars")
                Text("NIGHTLY TASKS")
            }
            .font(.title3)
            .foregroundColor(.red),
            content: {
                ForEach(nightlyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            })
            
            //MARK: WEEKLY TASKS
            Section (header: HStack {
                Image(systemName: "sunset")
                Text("WEEKLY TASKS")
            }
            .font(.title3)
            .foregroundColor(.red),
            content: {
                ForEach(weeklyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            })
            
            //MARK: MONTHLY TASKS
            Section(header: HStack {
                Image(systemName: "calendar")
                Text("MONTHLY TASKS")
            }.font(.title3)
            .foregroundColor(.red),
            content: {
                ForEach(monthlyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            })
            
        }.listStyle(GroupedListStyle())
        
        //        List(nightlyTasks, id: \.self, rowContent: {
        //            taskName in
        //            Text(taskName)
        //        })
        //
        //        List(weeklyTasks, id: \.self, rowContent: {
        //            taskName in
        //            Text(taskName)
        //        })
        //
        //        List(monthlyTasks, id: \.self, rowContent: {
        //            taskName in
        //            Text(taskName)
        //        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
