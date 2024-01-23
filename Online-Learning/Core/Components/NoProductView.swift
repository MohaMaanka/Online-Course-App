//
//  NoProductView.swift
//  Online-Learning
//
//  Created by Moha Maanka on 1/21/24.
//

import SwiftUI

struct NoProductView: View {
    @Environment(\.presentationMode) var mode
    var body: some View {
        NavigationStack{
            VStack(spacing: 5){
                
                Image("No Product")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .aspectRatio(contentMode: .fit)
                
                
                Text("No Product")
                    .font(.system(size: 19))
                
                Text("You don't have any products yet!")
                    .font(.system(size: 14))
                    .foregroundColor(Color.kTextTwo)
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        mode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color.kBlack)
                    })
                }
            }
        }
    }
}

#Preview {
    NoProductView()
}
