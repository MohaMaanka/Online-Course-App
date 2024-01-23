//
//  AppBarView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/19/23.
//

import SwiftUI

struct AppBarView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .leading){
                Color.kPrimary
                    .frame(height: 183)
           
                
                    
            }
            .ignoresSafeArea()
            Spacer()
            
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                        VStack {
                            Text("Hi, ")
                                .font(.title3)
                            +
                            Text("Mohamed")
                                .font(.title3)
                            
                            Text("Let’s start learning")
                                .font(.footnote)
                        }
                        .foregroundColor(.white)

                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        VStack {
                            Image("Good")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                        }
                        .foregroundColor(.white)

                    }
                }
        }
    }
}

#Preview {
    AppBarView()
}
