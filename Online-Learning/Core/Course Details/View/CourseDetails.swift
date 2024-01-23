//
//  CourseDetails.swift
//  Online-Learning
//
//  Created by Moha Maanka on 1/21/24.
//

import SwiftUI

struct CourseDetails: View {
    @Environment(\.presentationMode) var mode
    var courseManager : CourseManager
    @State var iconChange  = true
    
    
    var body: some View {
        NavigationStack{
            
            // Container
            VStack{
                
                
                VStack{
                    topSection
                }
                .frame(height: getRect().height / 5.5)
                
                
                
                ScrollView(.vertical , showsIndicators: false ){
                    
                    VStack{
                        
                        courseDetailSection
                        
                        
                        VStack{
                            
                            Button(action: {
                                iconChange.toggle()
                            }, label: {
                                Image(systemName: iconChange == false ? "chevron.up" : "chevron.down")
                                    .font(.title2)
                                    .foregroundColor(Color.kBlack)
                            })
                            
                            
                            
                            if iconChange {
                                
                                VStack (alignment: .leading)
                                {
                                    
                                    VStack{
                                        
                                        HStack{
                                            Text("01")
                                                .font(.system(size: 33))
                                                .foregroundColor(Color.kTextThree)
                                            
                                            VStack(alignment: .leading, spacing: 5) {
                                                
                                                Text("Welcome to the Cource")
                                                    .font(.system(size: 15))
                                                
                                                Text("6:50 min")
                                                    .font(.subheadline)
                                                    .foregroundColor(Color.kPrimary)
                                                    .fontWeight(.medium)
                                            }
                                            .padding(.leading)
                                            
                                            
                                            Spacer()
                                            Button {
                                                print("Video Play")
                                            } label: {
                                                Image(systemName: "play.circle.fill")
                                                    .resizable()
                                                    .frame(width: 50, height: 50)
                                                
                                            }
                                            
                                            
                                        }
                                        .padding(.horizontal)
                                        
                                        
                                    }
                                    .padding(.top,40)
                                    
                                    
                                }
                                
                                
                                
                            }
                            
                            
                        }
                        
                        
                        
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    Color.kWhite
                        .clipShape(RoundedShape(corners: [.topLeft , .topRight], radius: 25))
                )
                .ignoresSafeArea()
                .scrollDisabled(true)
                
                
            }
            // Tool Bar
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color.kBlack)
                    }
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.kSecondary)
        }
    }
}

#Preview {
    CourseDetails(courseManager: courseInfo[2])
}











extension CourseDetails {
    
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
    
    
    // Top Section
    
    var topSection: some View {
        HStack {
            
            // Reactange Sell
            VStack(alignment: .leading) {
                Image("BestSell")
                
                Text(courseManager.courseName)
                    .font(.title2)
                +
                Text(" v1.0")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundColor(Color.kPrimary)
            }
            
            Spacer()
            
            // Image Sell
            Image("Sell")
        }
        .padding(.horizontal)
        
    }
    
    
    
    // course Details Section
    
    var courseDetailSection : some View {
        
        VStack(alignment: .leading, spacing: 8) {
            HStack{
                
                Text(courseManager.courseName)
                    .font(.system(size: 18))
                    .bold()
                
                Spacer()
                
                Text("$\(String(format: "%.2f", courseManager.price))")
                    .font(.title)
                    .foregroundColor(Color.kPrimary)
                
            }
            .padding(.horizontal)
            .padding(.top)
            
            
            
            HStack{
                Text("\(courseManager.duration) . ")
                    .foregroundColor(Color.kTextTwo)
                +
                
                Text("\(courseManager.lesson) Lesson")
                    .foregroundColor(Color.kTextTwo)
            }
            .padding(.horizontal)
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text("About this course")
                    .font(.system(size: 19))
                
                Text(courseManager.description)
                    .font(.subheadline)
                    .foregroundColor(Color.kTextTwo)
                
            }
            
            .padding()
            
            
        }
    }
    
    
}
