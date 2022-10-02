//
//  MessageListView.swift
//  Smart-and-Dumb-views-in-SwiftUI
//
//  Created by Yahia on 3/10/22.
//

import SwiftUI

struct MessageListView: View {
    let messages: [Message]
    let onSelection:(Int)->Void
    
    var body: some View {
        List {
            ForEach(Array(messages.enumerated()), id: \.element) { index, messge in
                MessageRowView(message:messge,
                               onSelection: {
                    onSelection(index)
                })
            }
        }
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var viewModel = MessageViewModel()
    static var previews: some View {
        MessageListView(messages: viewModel.messages, onSelection: {index in
            print("index : \(index)")
        })
        .onAppear(){
            viewModel.loadMessages()
        }
    }
}



