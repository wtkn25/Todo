//
//  CheckBox.swift
//  Todo
//
//  Created by ken on 2020/07/09.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

struct CheckBox: View {
    @Binding var checked: Bool
    var body: some View {
        Image(systemName: checked ? "checkmark.circle":"circle")
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CheckBox(checked: .constant(false))
            CheckBox(checked: .constant(true))
        }
    }
}
