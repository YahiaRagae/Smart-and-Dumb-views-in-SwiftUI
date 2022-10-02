//
//  ChatScreen.swift
//  Smart-and-Dumb-views-in-SwiftUI
//
//  Created by Yahia on 3/10/22.
//

import SwiftUI

struct ChatScreen: View {
    @StateObject var viewModel = MessageViewModel()
    
    var body: some View {
        MessageListView(
            messages: viewModel.messages,
            onSelection: viewModel.onSelection
        )
        .onAppear(perform: viewModel.loadMessages)
        .navigationTitle("Messages")
    }
}

struct ChatScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreen()
    }
}
