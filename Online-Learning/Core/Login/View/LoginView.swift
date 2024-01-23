//
//  LoginView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/19/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private  var password = ""
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
                        forgetPasswordSection
                        loginSectionButton
                        alreadyAccountSection
                        dividerSection
                        imageSection
                         
                        
                        
                        
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
    LoginView()
}



extension LoginView {
    
    var titleSection : some View {
        VStack(spacing: 10) {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Please login to continue")
                .foregroundColor(Color.kTextTwo)

            Spacer()
        }
        .padding(.top,100)
        
    }
    
    
    var textFieldSection : some View {
        
        VStack(spacing: 25){
            
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
        .padding(.bottom, 480)

    }

    
    var forgetPasswordSection: some View {
        
        HStack {
            Spacer()
           
            NavigationLink(destination: Text("View")) {
                Text("Forget Password?")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.kTextTwo)
            }
        }
        .padding(.trailing)
        .padding(.bottom,320)
    }
    
    
    var loginSectionButton: some View {
        
        // Create button
        
        NavigationLink {
            Text("Main View")
        } label: {
            Text("Log In")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
        }
        .frame(width: 360, height: 50)
        .background(Color.kPrimary)
        .cornerRadius(15)
        .padding()
        .shadow(color: .black.opacity(0.25), radius: 3, x: 0 , y: 0)
        .padding(.bottom, 190)

    }
    
    
    var alreadyAccountSection : some View {
        // Already have an account
        NavigationLink {
            RegisterView()
                .navigationBarHidden(true)
        } label: {
            Text("Already have an account ")
                .font(.subheadline)
                .foregroundColor(.gray)
            +
            Text("Sign In")
                .font(.headline)
                .bold()
        }
        .padding()
        .padding(.leading,70)
        .padding(.bottom,45)
    }
    
   
    var dividerSection : some View {
        
        HStack {
            Rectangle()
                .frame(width: (UIScreen.main.bounds.width / 2) - 40 , height: 0.5)
            
            Text("Or login with")
                .font(.caption)
                .foregroundColor(.gray)
            
            Rectangle()
                .frame(width: (UIScreen.main.bounds.width / 2) - 80 , height: 0.5)
        }
        .padding(.top , 50)
        .padding()
      
    }
    
    
    var imageSection : some View {
        
        
        // Image Section
        
        
        HStack(spacing: 10){
            Spacer()
            
            Image("google")
                .resizable()
                .frame(width: 60, height: 60)
            
            Image("facebook")
                .resizable()
                .frame(width: 100, height: 50)
            
            Spacer()
        }
        .padding(.top, 180)
        .padding()
                
    }
    
    
    
    
}
