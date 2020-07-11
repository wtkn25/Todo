//
//  TodoDetailRow.swift
//  Todo
//
//  Created by ken on 2020/07/11.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

struct TodoDetailRow: View {
    @ObservedObject var todo: TodoEntity
    var body: some View {
        HStack {
            CategoryImage(TodoEntity.Category(rawValue: todo.category))
            CheckBox(checked: Binding(get: {
                self.todo.state == TodoEntity.State.done.rawValue
            }, set: {
                self.todo.state = $0 ? TodoEntity.State.done.rawValue : TodoEntity.State.todo.rawValue
            })){
                if self.todo.state == TodoEntity.State.done.rawValue {
                    Text(self.todo.task ?? "no title")
                    .strikethrough()
                } else {
                    Text(self.todo.task ?? "no title")
                }
            }
            .foregroundColor(self.todo.state == TodoEntity.State.done.rawValue ? .secondary : .primary)
        }
        
    }
}

struct TodoDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        let context = (UIApplication.shared.delegate as! AppDelegate)
            .persistentContainer.viewContext
        
        let newTodo = TodoEntity(context: context)
        newTodo.task = "将来への人間関係づくり"
        newTodo.state = TodoEntity.State.done.rawValue
        newTodo.category = 0
        
        return TodoDetailRow(todo: newTodo)
    }
}
