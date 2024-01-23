//
//  VideoManager.swift
//  Online-Learning
//
//  Created by Moha Maanka on 1/21/24.
//

import Foundation


struct VideoManager: Identifiable {
    var id = UUID()
    var videoNo : String
    var title : String
    var duration : String
    var videoUrl : String
    
}

var videoInfo = [
    VideoManager(videoNo: "01", title: "Introduction to HTML", duration: "8:30 min", videoUrl: "https://example.com/html-intro"),
    VideoManager(videoNo: "02", title: "CSS Fundamentals", duration: "5:45 min", videoUrl: "https://example.com/css-fundamentals"),
    VideoManager(videoNo: "03", title: "Responsive Web Design", duration: "12:30 min", videoUrl: "https://example.com/responsive-design"),
    VideoManager(videoNo: "04", title: "JavaScript Basics", duration: "7:20 min", videoUrl: "https://example.com/javascript-basics"),
    VideoManager(videoNo: "05", title: "Frontend Frameworks: React", duration: "11:15 min", videoUrl: "https://example.com/react-framework"),
    VideoManager(videoNo: "06", title: "Backend Development with Node.js", duration: "9:30 min", videoUrl: "https://example.com/nodejs-backend"),
    VideoManager(videoNo: "07", title: "APIs and RESTful Services", duration: "13:00 min", videoUrl: "https://example.com/api-restful"),
    VideoManager(videoNo: "08", title: "Database Design for Web Developers", duration: "8:45 min", videoUrl: "https://example.com/database-design"),
    VideoManager(videoNo: "09", title: "Web Security Best Practices", duration: "10:30 min", videoUrl: "https://example.com/web-security"),
    VideoManager(videoNo: "10", title: "Deploying Web Applications", duration: "5:30 min", videoUrl: "https://example.com/deployment-tips")
]
