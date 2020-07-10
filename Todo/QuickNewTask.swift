//
//  QuickNewTask.swift
//  Todo
//
//  Created by ken on 2020/07/10.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

struct QuickNewTask: View {
    let category: TodoEntity.Category
    @State var newTask:String = ""
    
    fileprivate func addNewTask() {
        self.newTask = ""
    }
    
    fileprivate func cancelTask() {
        self.newTask = ""
    }
    var body: some View {
        HStack {
            TextField("新しいタスク", text: $newTask){
                self.addNewTask()
            }
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {self.addNewTask()}) {
                Text("追加")
            }
            Button(action: {self.cancelTask()}) {
                Text("キャンセル")
                    .foregroundColor(Color(.red))
            }
        }
    }
}

struct QuickNewTask_Previews: PreviewProvider {
    static var previews: some View {
        QuickNewTask(category: .ImpUrg_1st)
    }
}
