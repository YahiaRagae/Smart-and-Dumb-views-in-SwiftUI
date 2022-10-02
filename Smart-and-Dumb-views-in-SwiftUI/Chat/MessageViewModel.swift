//
//  MessageViewModel.swift
//  Smart-and-Dumb-views-in-SwiftUI
//
//  Created by Yahia on 3/10/22.
//

import Foundation
class MessageViewModel: ObservableObject {
    @Published  var messages = [Message]()
    
    func loadMessages(){
        messages = [Message(sentAt: Date(), content: "1"),Message(sentAt: Date(), content: "2")]
    }
    
    var onSelection: (Int) -> Void {
        return {  [weak self] index in
            guard let self = self else {
                return
            }
            print("onSelection \(self.messages[index])")
        }
    }
}


