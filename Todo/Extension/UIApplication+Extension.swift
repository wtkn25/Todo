//
//  UIApplication+Extension.swift
//  Todo
//
//  Created by ken on 2020/07/12.
//  Copyright © 2020 ken. All rights reserved.
//

import SwiftUI

extension UIApplication {
    func closeKeyboard() {
        sendAction(#selector(UIResponder.resignFirstResponder),
                    to: nil,
                    from: nil,
                    for: nil)
    }
}
