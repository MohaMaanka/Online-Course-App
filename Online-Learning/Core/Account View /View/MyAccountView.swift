//
//  MyAccountView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/20/23.
//

import SwiftUI

struct MyAccountView: View {
    @Environment(\.presentationMode) var backArrow
    @State private var showImagePicker = false
    @State private var selectedImage : UIImage?
    @State private var profileImage : Image?
    var body: some View {
        NavigationStack{
            VStack {
                
                HStack{
                  Text("Account")
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding(.top,40)
                .padding(.leading)
                // User Image
                ZStack {
                    
                    
                  
                      
                    Button(action: {
                        showImagePicker.toggle()
                    }, label: {
                       
                        if let profileImage = profileImage {
                            profileImage
                                .resizable()
                                .clipShape(Circle())
                                .modifier(profileImageModifier())

                                
                        }else{
                            Image(systemName: "person.fill.badge.plus")
                                .resizable()
                                .modifier(profileImageModifier())
                                
                        }
                        
                    })
                    .sheet(isPresented: $showImagePicker,onDismiss: loadImage, content: {
                        ImagePickerView(selectedImage: $selectedImage)
                    })
                  
                }
                .padding(.top,20)
                
                VStack{
                
                    customNavigation
                    
                }
                
                
              
                Spacer()
                
                    
            }
        }
    }
    
    
    func loadImage() {
        guard let selectedImage = selectedImage else {return}
        profileImage = Image(uiImage: selectedImage)
    }
}


private struct profileImageModifier: ViewModifier  {
    func body(content: Content) -> some View {
        content
            .frame(width: 84, height: 84)
    }
}



@ViewBuilder

func CustomNavigationLink<Detail: View >(title: String, @ViewBuilder content: @escaping () -> Detail) -> some View{
    
    NavigationLink {
        content()
    } label: {
        
        HStack {
            Text(title)
                .font(.title3)
                .fontWeight(.regular)
            
            Spacer()
            Image(systemName: "chevron.right")
        }
        .foregroundColor(.black)
        .background(
            Color.white
                .cornerRadius(12)
        )
        .padding(.top, 30)
    }
    .padding(.horizontal)
    
}

#Preview {
    MyAccountView()
}

extension MyAccountView {
    
    
    var customNavigation : some View {
        VStack {
            
            // item One
            
            CustomNavigationLink(title: "Favourite") {
                Text("Favourite")
                    .navigationBarBackButtonHidden(true)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                backArrow.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "arrow.left")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            })
                        }
                    }
            }
                 // item Two
            
            CustomNavigationLink(title: "Edit Account") {
                Text("Edit Account")
                    .navigationBarBackButtonHidden(true)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                backArrow.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "arrow.left")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            })
                        }
                    }
            }
                 // item Three
            
            CustomNavigationLink(title: "Setting and Privacy") {
                Text("Setting and Privacy")
                    .navigationBarBackButtonHidden(true)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                backArrow.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "arrow.left")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            })
                        }
                    }
            }
                 // item Four
            
            CustomNavigationLink(title: "Help") {
                Text("Help")
                    .navigationBarBackButtonHidden(true)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button(action: {
                                backArrow.wrappedValue.dismiss()
                            }, label: {
                                Image(systemName: "arrow.left")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            })
                        }
                    }
            }
            
            
            
        }
    }
}
