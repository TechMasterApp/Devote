//
//  ListRowItemView.swift
//  Devote
//
//  Created by Gaurav Bhasin on 3/19/21.
//

import SwiftUI

struct ListRowItemView: View {
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    
    var body: some View {
        Toggle(isOn: $item.completed) {
            Text(item.task ?? "")
                .font(.system(.title, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completed ? .pink : .primary)
                .padding(.vertical, 12)
                .animation(.default)
        } //: TOGGLE
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange, perform: { _ in
            if self.viewContext.hasChanges {
                try? self.viewContext.save()
            }
        })
    }
}
