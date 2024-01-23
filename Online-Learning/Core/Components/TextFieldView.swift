//
//  TextFieldView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/19/23.
//

import SwiftUI

struct TextFieldView: View {
    
   let placeholder: String
   let imageName: String
   @Binding var text:  String
    
    
    var body: some View {
        VStack{
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20 , height: 20)
                .foregroundColor(Color(.darkGray))
                
                
                TextField(placeholder , text: $text)
                

            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

#Preview {
    TextFieldView(placeholder: "Enter Your Email", imageName: "envelope", text: .constant(""))
}
