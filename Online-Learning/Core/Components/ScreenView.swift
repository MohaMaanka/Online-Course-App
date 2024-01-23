//
//  ScreenView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/19/23.
//

import SwiftUI

struct ScreenView: View {
    var imageName: String
    var titleOne : String
    var subTitleOne : String 
    var titleTwo : String
    var subTitleTwo : String
    
    
    
    var body: some View {
        // Parent Container
        VStack {
            // Container
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        print("Next Screen")
                    }, label: {
                        Text("Skip")
                            .fontWeight(.semibold)
                })
                }
                .padding(.trailing)
                
                
                // Imaage
                
                VStack {
                    Image(imageName)
                        .resizable()
                        .frame(width: 250, height: 250)
                    
                    
                    VStack {
                        Text(titleOne)
                            .font(.title)
                        Text(subTitleOne)
                            .font(.title)
                            .padding(.bottom)
                        
                        Text(titleTwo)
                        Text(subTitleTwo)
                    }
                    
                  
                        
              
                }
                
                
            }
            .padding(.bottom,200)

        }
    }
}

#Preview {
    ScreenView(imageName: "Screen One Image", titleOne: "Numereus Free", subTitleOne: "trail course", titleTwo: "Free courses for you to find", subTitleTwo: "your way to learning")
}
