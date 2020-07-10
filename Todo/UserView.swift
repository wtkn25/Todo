//
//  UserView.swift
//  Todo
//
//  Created by ken on 2020/07/10.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("こんにちは")
                Text("Kenji Watarai")
            }
            Image("profile")
                .resizable()
                .frame(width:60, height:60)
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
