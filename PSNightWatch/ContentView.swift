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
        
        NavigationView {
        
            List {
                
                //MARK: NIGHTLY TASKS
                Section (header: TaskSectionHeader(symbolSystemName: "moon.stars", headerText: "NightlyTasks"),
                content: {
                    ForEach(nightlyTasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName, destination: Text(taskName))
                    })
                })
                
                //MARK: WEEKLY TASKS
                Section (header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "Weekly Tasks"),
                content: {
                    ForEach(weeklyTasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName, destination: Text(taskName))
                    })
                })
                
                //MARK: MONTHLY TASKS
                Section(header: TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks"),
                content: {
                    ForEach(monthlyTasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName, destination: Text(taskName))
                    })
                })
                
            }.listStyle(GroupedListStyle())
            
        }
    }
}


struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    var body: some View {
        HStack {
            Image(systemName: symbolSystemName)
            Text(headerText)
        }
        .font(.title3)
        .foregroundColor(.red)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
