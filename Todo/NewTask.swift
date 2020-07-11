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
    @State var time: Date = Date()
    var body: some View {
        NavigationView {
            Form {
                TextField("タスクを入力", text: $task)
                DatePicker(selection: $time, label: { Text("日時")} )
                Button(action: {}) {
                    HStack(alignment: .center) {
                        Image(systemName: "minus.circle.fill")
                        Text("キャンセル")
                    }.foregroundColor(.red)
                }
            }.navigationBarTitle("タスクの追加")
        }
    }
}

struct NewTask_Previews: PreviewProvider {
    static var previews: some View {
        NewTask()
    }
}
