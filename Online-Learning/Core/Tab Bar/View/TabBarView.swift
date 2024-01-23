//
//  TabBarView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 1/22/24.
//

import SwiftUI

struct TabBarView: View {
    @State var index = 0
    var body: some View {
            
            VStack {
                
                ZStack{
                   
                    if index == 0 {
                        
                        Color.black.opacity(0.03)
                    }
                    else if index == 1{
                        Color.black.opacity(0.03)
                    }
                    else if index == 2{
                        Color.black.opacity(0.03)
                    }
                    else if index == 3{
                        Color.black.opacity(0.03)
                    }
                    else{
                        Color.black.opacity(0.03)

                    }
                }
                .padding(.bottom, -35)
                
                TabItem(index: $index)

            }
            .ignoresSafeArea()
          
    }
}

#Preview {
    TabBarView()
}



struct TabItem : View {
    @Binding var index : Int
    var body: some View{
            HStack{
                
                Button(action: {
                    index = 0
                }, label: {
                    VStack(alignment: .center){
                        Image(systemName: "house.fill")
                            .padding(.leading,5)
                        Label("Home", image: "")
                            .font(.caption2)
                    }
                })  
                .foregroundColor(index == 0 ? Color.kBlue : Color.black.opacity(0.3))
                Spacer(minLength: 0)
                    .offset(x: -10)

                
                
                Button(action: {
                    index = 1
                }, label: {
                    VStack{
                        Image(systemName: "book.closed.fill")
                            .padding(.leading,7)

                        Label("Course", image: "")
                            .font(.caption2)
                    }
                })
                .foregroundColor(index == 1 ? Color.kBlue : Color.black.opacity(0.3))
                Spacer(minLength: 0)
                    .offset(x: -10)

                
                
                Button(action: {
                    index = 2
                }, label: {
                    VStack{
                        Image(systemName: "magnifyingglass.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.leading,6)
                            

                        Label("Search", image: "")
                            .font(.caption2)
                            .padding(.top,14)
                    }
                    .offset(y: -25)

                })
                .foregroundColor(index == 2 ? Color.kBlue : Color.black.opacity(0.3))
                Spacer(minLength: 0)

                
                Button(action: {
                    index = 3
                }, label: {
                    VStack{
                        Image(systemName: "ellipsis.bubble.fill")
                            .padding(.leading,8)
                        Label("Message", image: "")
                            .font(.caption2)
                    }
                })
                .foregroundColor(index == 3 ? Color.kBlue : Color.black.opacity(0.3))
                .offset(x: -10)

                Spacer(minLength: 0)
                
                Button(action: {
                    index = 4
                }, label: {
                    VStack{
                        Image(systemName: "person.fill")
                            .padding(.leading,6)
                        Label("Account", image: "")
                            .font(.caption2)
                    }
                })
                .foregroundColor(index == 4 ? Color.kBlue : Color.black.opacity(0.3))
                .offset(x: -10)

                
                
                
            }
            .padding(.horizontal, 35)
            .padding(.top , 35)
            .background(Color.white)
        .clipShape(CShape())
        }
}




struct CShape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path{ path in
            
            path.move(to: CGPoint(x: 0, y: 35))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 35))
            
            
            path.addArc(center: CGPoint(x: (rect.width / 2.1) + 2, y: 35), radius: 32, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            
            
        }
    }
    
    
}
