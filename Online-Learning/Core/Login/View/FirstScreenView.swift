//
//  FirstScreenView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/19/23.
//

import SwiftUI

struct FirstScreenView: View {
    var body: some View {
       
            // Parent Container
            NavigationStack {
                // Container
                VStack {
                    HStack {
                        Spacer()
                        
                        NavigationLink(destination: SecondScreenView()
                            .navigationBarHidden(true)
                           ){
                            Text("Skip")
                                .fontWeight(.semibold)
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.trailing)
                    
                    
                    // Imaage
                    
                    VStack {
                        Image("Screen One Image")
                            .resizable()
                            .frame(width: 250, height: 250)
                        
                        
                        VStack {
                            Text("Numerous free")
                                .font(.title)
                            Text("trail course")
                                .font(.title)
                                .padding(.bottom)
                            
                            Text("Free courses for you to find")
                                .foregroundColor(Color.kTextTwo)
                            Text("you way to learning")
                                .foregroundColor(Color.kTextTwo)
                        }
                        
                      
                            
                  
                    }
                    
                    
                }
                .padding(.bottom,200)
        }
    }
}

#Preview {
    FirstScreenView()
}
