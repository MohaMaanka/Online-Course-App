//
//  NotificationView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 1/23/24.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack(){
            
            HStack(spacing: 30){
                
                Image(systemName: "creditcard.fill")
                    .foregroundColor(.orange)
                    .background(
                        Color.kOrangeLight
                            .frame(width: 48 , height: 48)
                            .cornerRadius(12)
                    )
                
                
                VStack(alignment: .leading, spacing: 7) {
                    Text("Successful purchase!")
                        .font(.subheadline)
                    
                    HStack {
                        Image(systemName: "clock.fill")
                        
                        Text("Just now")
                            .font(.subheadline)
                    }
                    .foregroundColor(.gray)
                    
                    
                }
                
                
                Spacer()
            }
            .padding(.leading, 30)
            .frame(width: 335, height: 80)
            .background(.white)
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.1), radius: 2 , x: 0 , y: 2)
        }
    }
}

#Preview {
    NotificationView()
}
