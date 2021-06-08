//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Gaurav Bhasin on 3/9/21.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
