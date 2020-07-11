//
//  ContentView.swift
//  Todo
//
//  Created by ken on 2020/07/08.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Color.tBackground
                .edgesIgnoringSafeArea(.top)
                .frame(height: 0)
            UserView(image: Image("profile"), userName: "Kenji Watarai")
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    CategoryView(category: .ImpUrg_1st)
                    Spacer()
                    CategoryView(category: .ImpNUrg_2nd)
                }
                Spacer()
                HStack(spacing: 0) {
                    CategoryView(category: .NImpUrg_3rd)
                    Spacer()
                    CategoryView(category: .NImpNUrg_4th)
                }
            }.padding()
        }.background(Color.tBackground)
            .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
