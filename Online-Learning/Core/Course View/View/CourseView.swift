//
//  CourseView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/21/23.
//

import SwiftUI





struct CourseView: View {
    @State private var selectedCategory: SearchCategory = .all
    @State private var searchText: String = ""
    
    
    
    var filteredVideos: [CourseManager] {
        var filtered = courseInfo
        
        switch selectedCategory {
        case .popular:
            filtered = filtered.filter { $0.price >= 60 }
        case .new:
            filtered = filtered.sorted { $0.id.uuidString > $1.id.uuidString }
        case .all:
            break
        }
        
        let cleanedSearchText = searchText.trimmingCharacters(in: .whitespacesAndNewlines)
        if !cleanedSearchText.isEmpty {
            filtered = filtered.filter { $0.courseName.localizedCaseInsensitiveContains(cleanedSearchText) }
        }
        
        return filtered
    }
    
    var body: some View {
        // Main Conatiner
        NavigationStack {
            
            ScrollView( showsIndicators: false) {
                
                searchBarSection
                headerSection
                filterSection
                cousesSection
                
                
                
            }
            .background(.gray.opacity(0.1))
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Course")
                        .font(.title)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image("Good")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .clipShape(Circle())
                }
            }
        }
    }
}






#Preview {
    CourseView()
}





extension CourseView {
    
    
    // Search Bar Section
    
    var searchBarSection: some View {
        VStack {
            HStack{
                Image(systemName: "magnifyingglass")
                
                TextField("Find Cource", text: $searchText)
                
                
                
                Spacer()
                NavigationLink(destination: SearchView()) {
                    Image(systemName: "slider.horizontal.3")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .foregroundColor(Color.black.opacity(0.5))
                }
            }
            .padding()
            .background(
                Color.gray.opacity(0.2)
                    .clipShape(RoundedShape(corners: [.allCorners], radius: 15))
                
            )
            .padding()
            
        }
    }
    
    // Hreader Section

    
    var headerSection : some View {
        HStack{
            Text("Choose Your Course")
                .font(.title2)
                .fontWeight(.medium)
            Spacer()
        }
        .padding(.horizontal)
        
    }
    
    // Course Section
    
    var cousesSection: some View {
        Group {
            if filteredVideos.isEmpty {
               
                VStack(spacing: 5){
                    
                    Image("No Product")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, 100)
                    
                    
                    Text("No Product")
                        .font(.system(size: 19))
                    
                    Text("You don't have any products yet!")
                        .font(.system(size: 14))
                        .foregroundColor(Color.kTextTwo)
                }
            }
            else {
                VStack{
                    ForEach(filteredVideos){video in
                        DesignCourseView(courseManager: video)
                            .padding(.top,8)
                    }
                }
            }
        }
    }
    
    // Filert Section
    
    
    var filterSection : some View {
        
        HStack {
            ForEach(SearchCategory.allCases , id: \.rawValue){ search in
                Text(search.rawValue)
                    .font(.system(size: 17))
                    .fontWeight(.medium)
                    .foregroundColor(selectedCategory == search ? .white : .gray)
                    .frame(width: 84, height: 31)
                    .background(selectedCategory == search ? Color.blue : Color.clear)
                    .cornerRadius(20)
                    .onTapGesture {
                        selectedCategory = search
                    }
            }
            .padding()
            Spacer()
        }
        
        
    }
    
}



