//
//  TodoList.swift
//  Todo
//
//  Created by ken on 2020/07/10.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

struct TodoList: View {
    
    let category: TodoEntity.Category
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TodoList_Previews: PreviewProvider {
    static var previews: some View {
        TodoList(category: .ImpUrg_1st)
    }
}
