//
//  SearchView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/19/23.
//

import SwiftUI

struct SearchView: View {
    @Environment(\.presentationMode) var mode
    var body: some View {
        NavigationStack {
            VStack{
                
                VStack {
                    
                }
                .frame(height: getRect().height / 5.5)
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    topBarSection
                    SearchTitleView(title: "Categories")
                        .padding(.bottom,25)
                    buttonSection
                    SearchTitleView(title: "Price")
                        .padding(.top,25)
                    
                    priceSection

                    SearchTitleView(title: "Duration")
                    
                    durationSection
                    sectionButtonApply
                    
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background{
                    Color.white
                        .clipShape(RoundedShape(corners: [.topLeft, .topRight], radius: 25))
                }
                .ignoresSafeArea()
                .scrollDisabled(true)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.kTextOne)
        }
    }
}

#Preview {
    SearchView()
}



extension SearchView {
    
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
    
    // Top Bar Section
    
    var topBarSection : some View {
        
        HStack(spacing: 100) {
            Button(action: {
                mode.wrappedValue.dismiss()
            }, label: {
                Text("X")
                    .font(.title)
                    .bold()
                    .foregroundColor(.black)
            })
            
            Text("Search Filter")
                .font(.title2)
            
            Spacer()
        }
        .padding()
    }
    
    // Section title
    
    // button
    
    var buttonSection: some View {
        VStack {
            HStack {
                CustomButton(title: "Design", foreColor: .white, background: Color.kPrimary, size: 85)
                
                CustomButton(title: "Painting", foreColor: .gray, background: Color.kTertiary, size: 85)
                
                CustomButton(title: "Coding", foreColor: .white, background: Color.kPrimary, size: 85)
                Spacer()
            }
            .padding(.top,10)
            
             HStack {
                CustomButton(title: "Music", foreColor: .gray, background: Color.kTertiary, size: 80)
                 
                 CustomButton(title: "Visual identity", foreColor: .gray, background: Color.kTertiary, size: 120)
                 
                 CustomButton(title: "Mathematics", foreColor: .gray, background: Color.kTertiary, size: 120)
                
                Spacer()
            }
            .padding(.top,10)
            
            
        }
        .navigationBarBackButtonHidden(true)
    }
    
    
    // price
    
    var priceSection : some View {
        HStack{
            Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)

        }
        .padding(.horizontal)
    }
    
    
    var durationSection : some View {
       
        VStack {
            HStack {
                CustomButton(title: "3.8 Hours", foreColor: .white, background: Color.kPrimary, size: 90)
                
                CustomButton(title: "8-14 Hours", foreColor: .gray, background: Color.kTertiary, size: 120)
                
                CustomButton(title: "14-20 Hours", foreColor: .gray, background: Color.kTertiary, size: 110)
                Spacer()
            }
            .padding(.top,10)
            
             HStack {
                CustomButton(title: "20-24 Hours", foreColor: .gray, background: Color.kTertiary, size: 120)
                 
                 CustomButton(title: "24-30 Hours", foreColor: .gray, background: Color.kTertiary, size: 120)
                
                Spacer()
            }
            .padding(.top,10)
            
            
        }
        
    }
    
    // Button Clear And Apply
    
    var sectionButtonApply : some View {
        VStack{
            HStack (spacing: 30){
                
                Button(action: {
                    print("Clear")
                }, label: {
                    Text("Clear")
                        .foregroundColor(.kPrimary)
                        .frame(width: 100, height: 50)
                        .overlay{
                           RoundedRectangle(cornerSize: CGSize(width: 13, height: 13))
                                .stroke(lineWidth: 1.5)
                            
                        }
                        
                })
                
                NavigationLink {
                    Text("Search Filter")
                } label: {
                    Text("Apply Filter")
                        .foregroundColor(.white)
                        .frame(width: 190, height: 50)
                        .background(Color.kPrimary)
                        .cornerRadius(12)
                }

                
                
            }
            .padding(.top, 10)
            .padding()
        }
    }
    
    
    
}





struct SearchTitleView: View {
    var title : String
    var body: some View {
        HStack{
            
            Text(title)
                .font(.title3)
            Spacer()
        }
        .padding(.leading)
    }
}
