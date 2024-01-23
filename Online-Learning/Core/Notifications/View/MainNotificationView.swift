//
//  NotificationView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 1/23/24.
//

import SwiftUI

struct MainNotificationView: View {
    @State private var selectedFilter : TitleNotifications = .notification
    @Namespace var animation
    var body: some View {
        NavigationStack {
            // Container
            VStack {
                
                titleOption
                 NotificationView()
                
               
              
                Spacer()
                
                
                
            }
            .navigationTitle("Notifications")
        }
    }
}

#Preview {
    MainNotificationView()
}




extension MainNotificationView {
    
    // Titles
    
    var titleOption : some View {
        
        HStack(spacing: 100) {
            ForEach(TitleNotifications.allCases, id: \.rawValue){ option in
                VStack {
                    Text(option.title)
                        .font(.subheadline)
                        .fontWeight(selectedFilter == option ? .semibold : .regular)
                        .foregroundColor(selectedFilter == option ? .black : .gray)
                    
                    if selectedFilter == option {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(width: 105, height: 3 , alignment: .center)
                            .matchedGeometryEffect(id: "filter", in: animation)

                    }else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(width: 105, height: 3 , alignment: .center)
                    }
                    
                    
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = option
                    }
                }
               
            }
            
        }
        .padding(.top)
        
    }
    
    
}
