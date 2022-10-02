//
//  MessageRowView.swift
//  Smart-and-Dumb-views-in-SwiftUI
//
//  Created by Yahia on 3/10/22.
//

import SwiftUI

struct MessageRowView: View {
    let message: Message
    let onSelection:()->Void
    
    var body: some View {
        HStack {
            Button(action: { onSelection() }) {
                VStack {
                    Text(message.sentAt.formatted())
                        .font(.footnote)
                    Text(message.content)
                }
            }
        }
    }
}

struct MessageRowView_Previews: PreviewProvider {
    static var previews: some View {
        MessageRowView(message: Message(sentAt: Date(), content: "content")) {
            print("edit")
        }
    }
}
            
            

