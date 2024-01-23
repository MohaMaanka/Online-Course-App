//
//  NotificationViewModel.swift
//  Online-Learning
//
//  Created by Moha Maanka on 1/23/24.
//

import Foundation


enum NotificationViewModel : String , CaseIterable {
    case purchase
    case complete
    case updateCourse
    case time
    
    var title : String {
        switch self {
        case .purchase :
            return "Successful purchase!"
            
        case .complete:
            return "Congratulations on completing the online course!"
        case .updateCourse:
            return "Your course has been updated; you now have access to the latest resources and features. Happy learning!"
        case .time:
            return "Just now"
        }
    }
  
    
    var image : String {
        switch self {
        case .purchase :
            return "creditcard.fill"
        case .complete:
            return "text.bubble.fill"
        case .updateCourse:
            return "text.bubble.fill"
        case .time:
            return "clock.fill"
        }
    }
  
}
