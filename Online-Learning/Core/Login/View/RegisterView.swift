//
//  RegisterView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/19/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var email = ""
    @State private var userName = ""
    @State private  var fullName = ""
    @State private  var password = ""
    
    @State private var isChecked = false

    var body: some View {
        NavigationStack {
            // Container
            VStack {
                
                ZStack {
                    Color.kWhite
                    
                   titleSection
                    
                    ZStack(alignment: .leading){
                        Color.white
                        
                        textFieldSection
                        createSectionButton
                            .padding(.top)
                        agreementSection
                       alreadyAccountSection

                     
                        
                      
                    }
                    .frame(height: 700)
                    .cornerRadius(18)
                    .shadow(color: .black.opacity(0.1), radius: 1)
                    .padding(.top,200)
                
                    
                    
                    
                    
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    RegisterView()
}


extension RegisterView {
    
    var titleSection : some View {
        VStack(spacing: 10) {
            Text("Sign Up")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Enter your details below & free sign up")
                .foregroundColor(.gray)
            
            Spacer()
        }
        .padding(.top,100)
    }
    
    
    // text Field
    
    var textFieldSection : some View {
        
        // Text Filed
        
        VStack(spacing: 25){
         
            // Email
            VStack{
                
                HStack (spacing: 15){
                    Image(systemName: "envelope")
                        .resizable()
                        .frame(width: 23, height: 22)
                        .foregroundColor(.black.opacity(0.7))
                    
                    TextField("Enter Your Email", text: $email)
                }
                .padding(.horizontal)
                Divider()
                    .background(.gray)
                    .padding(.horizontal)
                    .padding(.vertical,8)
            }
            
            
               // User Name
               VStack{
                   
                   HStack (spacing: 15){
                       Image(systemName: "person")
                           .resizable()
                           .frame(width: 23, height: 22)
                           .foregroundColor(.black.opacity(0.7))
                       
                       TextField("Enter Your User Name", text: $userName)
                   }
                   .padding(.horizontal)
                   Divider()
                       .background(.gray)
                       .padding(.horizontal)
                       .padding(.vertical,8)
               }
               
            
               // Full Name
               VStack{
                   
                   HStack (spacing: 15){
                       Image(systemName: "person")
                           .resizable()
                           .frame(width: 23, height: 22)
                           .foregroundColor(.black.opacity(0.7))
                       
                       TextField("Enter Your Full Name", text: $fullName)
                   }
                   .padding(.horizontal)
                   Divider()
                       .background(.gray)
                       .padding(.horizontal)
                       .padding(.vertical,8)
               }
               
            
            // Password
            
               VStack{
                
                HStack (spacing: 15){
                    Image(systemName: "lock")
                        .resizable()
                        .frame(width: 23, height: 22)
                        .foregroundColor(.black.opacity(0.7))
                    
                    TextField("Enter Your Password", text: $password)
                }
                .padding(.horizontal)
                Divider()
                    .background(.gray)
                    .padding(.horizontal)
                    .padding(.vertical,8)

            }
            
      
        }
        .padding(.bottom, 340)
    }
    
    
    var createSectionButton: some View {
        
        // Create button
        
        NavigationLink {
            SearchView()
        } label: {
            Text("Create Account")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
        }
        .frame(width: 360, height: 50)
        .background(Color.kPrimary)
        .cornerRadius(15)
        .padding()
        .shadow(color: .black.opacity(0.25), radius: 3, x: 0 , y: 0)

    }
    
    
    // Agree
    
    var agreementSection : some View {
        
        // Agreement Section
        
        VStack{

            Button(action: {
                isChecked.toggle()
            }, label: {
                HStack(alignment: .top, spacing: 10){
                    
                    Rectangle()
                        .fill(isChecked ? Color.blue : Color.gray)
                        .frame(width: 21, height: 22)
                        .cornerRadius(5)
                        .overlay{
                            Image(systemName: isChecked ? "checkmark" : "")
                                .foregroundColor(.white)
                        }
                    
                    
                    Text("By creating an account you have to agree with our them & condication.")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
            })
        }
        .padding()
        .padding(.top, 150)
    }
    
    
    var alreadyAccountSection : some View {
        // Already have an account
        NavigationLink {
            LoginView()
                .navigationBarHidden(true)
        } label: {
            Text("Already have an account ")
                .font(.subheadline)
                .foregroundColor(.gray)
            +
            Text("Sign In")
                .foregroundColor(Color.kPrimary)
                .font(.headline)
        }
        .padding()
        .padding(.leading,70)
        .padding(.top, 500)
    }
   
    
   
    
}
