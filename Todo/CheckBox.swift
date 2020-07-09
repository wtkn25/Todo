//
//  CheckBox.swift
//  Todo
//
//  Created by ken on 2020/07/09.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

struct CheckBox: View {
    @State var checked: Bool = false
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
            CheckBox()
            CheckBox(checked: true)
        }
    }
}
