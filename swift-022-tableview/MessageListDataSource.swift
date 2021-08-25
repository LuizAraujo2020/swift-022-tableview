//
//  MessageListDataSource.swift
//  swift-022-tableview
//
//  Created by Luiz Carlos da Silva Araujo on 25/08/21.
//

import UIKit

class MessageListDataSource: NSObject, UITableViewDataSource {
    // We keep this public and mutable, to enable our data
    // source to be updated as new data comes in.
    var messages: [Message]
    
    init(messages: [Message]) {
        self.messages = messages
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = messages[indexPath.row]
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "message",
            for: indexPath
        )
        
        cell.textLabel?.text = message.title
        cell.detailTextLabel?.text = message.preview
        
        return cell
    }
}
