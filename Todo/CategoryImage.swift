//
//  CategoryImage.swift
//  Todo
//
//  Created by ken on 2020/07/08.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

struct CategoryImage: View {
    
    var category: TodoEntity.Category
    
    init(_ category: TodoEntity.Category?){
        self.category = category ?? .ImpUrg_1st
    }
    
    var body: some View {
        Image(systemName: "tortoise.fill")
            .resizable()
            .scaledToFit()
            .foregroundColor(.white)
            .padding(2.0)
            .frame(width: 30, height:30)
            .background(category.color())
            .cornerRadius(6.0)
            
            
    }
}

struct CategoryImage_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImage(TodoEntity.Category.ImpUrg_1st)
    }
}
