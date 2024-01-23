//
//  RoundedShape.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/19/23.
//

import SwiftUI


struct RoundedShape : Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}
