//
//  CustomButton.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/19/23.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var foreColor : Color
    var background: Color
    var size: CGFloat
    var body: some View {
        VStack {
            HStack{
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text(title)
                        .font(.subheadline)
                        .foregroundColor(foreColor)
                        .frame(width: size,height: 38)
                        .background(background)
                        .cornerRadius(6)
                })
                
               
            }
            .padding(.leading)
        }
    }
}

#Preview {
    CustomButton(title: "Design", foreColor: .white, background: Color.kPrimary, size: 85)
}
