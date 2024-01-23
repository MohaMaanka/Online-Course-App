//
//  MainScreenView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/19/23.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        // Parent Container
        NavigationStack {
            // Container
            VStack {
                // Imaage
                VStack {
                    Image("Main Screen Image")
                        .resizable()
                        .frame(width: 250, height: 250)
                    
                    
                    VStack {
                        Text("Create your own study")
                            .font(.title)
                        Text("plan")
                            .font(.title)
                            .padding(.bottom)
                        
                        Text("Study according to the study ")
                            .foregroundColor(Color.kTextTwo)

                        Text("plan, make study more")
                            .foregroundColor(Color.kTextTwo)

                        Text("motivated")
                            .foregroundColor(Color.kTextTwo)

                    }
                }
                
                
                HStack{
                    
                    
                    //  Sign Up
                    NavigationLink(destination: RegisterView()
                        .navigationBarHidden(true)) {
                        Text("Sign Up")
                            .frame(width: 160, height: 50)
                            .background(Color.kPrimary)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .font(.subheadline)
                            .bold()
                    }
                    
                      
                    //  Sign Up
                    
                    NavigationLink(destination: LoginView() .navigationBarHidden(true)) {
                        Text("Log in")
                            .frame(width: 160, height: 50)
                            .cornerRadius(15)
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(Color(.systemBlue))
                    }
                    .overlay{
                        RoundedRectangle(cornerRadius: 15)
                            .stroke()
                            .fill(Color(.systemBlue))

                    }
                    
                    
                    
                    
                    Spacer()
                }
                .padding(.leading, 40)
                .padding(.top, 100)
                
                
            }
            .padding(.vertical,200)
       
          
                
      

        }
    }
}

#Preview {
    MainScreenView()
}
