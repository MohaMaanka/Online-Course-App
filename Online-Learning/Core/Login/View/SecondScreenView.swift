//
//  SecondScreenView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/19/23.
//

import SwiftUI

struct SecondScreenView: View {
    var body: some View {
        // Parent Container
        NavigationStack {
            // Container
            VStack {
                HStack {
                    Spacer()
                    NavigationLink(destination: MainScreenView()
                        .navigationBarHidden(true)) {
                        Text("Skip")
                            .fontWeight(.semibold)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.trailing)
                
                
                // Imaage
                
                VStack {
                    Image("Screen Two Image")
                        .resizable()
                        .frame(width: 250, height: 250)
                    
                    
                    VStack {
                        Text("Quick and Easy")
                            .font(.title)
                        Text("learning")
                            .font(.title)
                            .padding(.bottom)
                        
                        Text("Easy and fast learning at any")
                            .foregroundColor(Color.kTextTwo)

                        Text("time to help you improve \n           various skills")
                            .foregroundColor(Color.kTextTwo)

                    }
                    
                  
                        
              
                }
                
                
            }
            .padding(.bottom,200)

        }
    }
}

#Preview {
    SecondScreenView()
}
