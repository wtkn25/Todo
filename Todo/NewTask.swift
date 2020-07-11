//
//  NewTask.swift
//  Todo
//
//  Created by ken on 2020/07/11.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

struct NewTask: View {
    @State var task: String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextField("タスクを入力", text: $task)
            }.navigationBarTitle("タスクの追加")
        }
    }
}

struct NewTask_Previews: PreviewProvider {
    static var previews: some View {
        NewTask()
    }
}
