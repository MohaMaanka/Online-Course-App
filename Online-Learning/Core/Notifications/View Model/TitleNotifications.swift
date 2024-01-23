//
//  TitleNotifications.swift
//  Online-Learning
//
//  Created by Moha Maanka on 1/23/24.
//

import Foundation


enum TitleNotifications : Int , CaseIterable{
    case message
    case notification
    
    
    var title : String {
        switch self {
        case .message:
            return "Message"
        case .notification:
            return "Notifications"
        }
    }
    
    
}
