//
//  VideoSectionView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/20/23.
//

import SwiftUI

struct DesignCourseView: View {
    @State private var courseName = ""
    var courseManager: CourseManager
    
    var body: some View {
        // Main Conatiner
        NavigationStack {
            
            VStack(alignment: .leading){
                
                NavigationLink(destination: CourseDetails(courseManager: courseManager)
                    .navigationBarBackButtonHidden())
                {
                    HStack(spacing: 12) {
                        
                        VStack{
                            Image(courseManager.courseImage)
                                .resizable()
                                .frame(width: 80, height: 80)
                                .cornerRadius(6)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 8){
                            Text(courseManager.courseName)
                                .lineLimit(1)
                                .font(.subheadline)
                                .fontWeight(.medium)
                            
                            HStack {
                                Image(systemName: courseManager.teacherIcon)
                                    .foregroundColor(.gray)
                                
                                Text(courseManager.teacherName)
                                    .font(.headline)
                                    .fontWeight(.medium)
                                    .foregroundColor(.gray)
                            }
                            
                            
                            HStack (spacing: 20){
                                
                                Text("$\(String(format: "%.2f", courseManager.price))")
                                    .font(.title3)
                                    .foregroundColor(Color(.systemBlue))
                                
                                Text(courseManager.duration)
                                    .font(.footnote)
                                    .bold()
                                    .frame(width: 90, height: 18)
                                    .background(Color.kSecondary)
                                    .cornerRadius(20)
                                    .foregroundColor(.red)
                                
                            }
                        }
                        Spacer()
                    }
                    .padding(.horizontal)
                }
                
                
            }
            .frame(width: 365, height: 100)
            .background(
                Color.white
                    .cornerRadius(10)
                    .shadow(color: .white, radius: 1, x: 0, y: 0.5)
            )
        }
        
    }
}

#Preview {
    DesignCourseView(courseManager: courseInfo[1])
    
}


extension DesignCourseView {
    
    
    
}

