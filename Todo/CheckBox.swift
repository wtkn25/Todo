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
        Toggle(isOn: $checked){
            Text("チェックボックス")
        }
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        CheckBox()
    }
}
