//
//  UserView.swift
//  Todo
//
//  Created by ken on 2020/07/10.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

struct UserView: View {
    
    let image: Image
    let userName: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("こんにちは")
                    .foregroundColor(Color.tTitle)
                    .font(.footnote)
                Text("\(userName)")
                    .foregroundColor(Color.tTitle)
                    .font(.title)
            }
            Spacer()
            image
                .resizable()
                .frame(width:60, height:60)
                .clipShape(Circle())
        }
            .padding()
            .background(Color.tBackground)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(image: Image("profile"), userName: "Kenji Watarai")
    }
}
