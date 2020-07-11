//
//  NewTask.swift
//  Todo
//
//  Created by ken on 2020/07/11.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

struct NewTask: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello World!")
            }.navigationBarTitle("タスクの追加")
        }
    }
}

struct NewTask_Previews: PreviewProvider {
    static var previews: some View {
        NewTask()
    }
}
