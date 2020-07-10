//
//  TodoList.swift
//  Todo
//
//  Created by ken on 2020/07/10.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI
import CoreData

struct TodoList: View {
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \TodoEntity.time,
                                           ascending: true)],
        animation:.default)
    var todoList: FetchedResults<TodoEntity>
    
    let category: TodoEntity.Category
    
    var body: some View {
        List {
            ForEach(todoList){ todo in
                Text(todo.task ?? "no title")
            }
        }
    }
}

struct TodoList_Previews: PreviewProvider {
    
    static let context = (UIApplication.shared.delegate as! AppDelegate)
        .persistentContainer.viewContext
    
    static var previews: some View {
        TodoList(category: .ImpUrg_1st)
            .environment(\.managedObjectContext, context)
    }
}
