//
//  VideoManager.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/20/23.
//

import Foundation


struct CourseManager : Identifiable{
    
    var id =  UUID()
    var courseImage : String
    var courseName: String
    var teacherName : String
    var teacherIcon : String
    var price : Double
    var duration : String
    var description : String
    var lesson : Int
}

let courseInfo = [
    
    CourseManager(
        courseImage: "Introduction to Programming",
        courseName: "Introduction to Programming",
        teacherName: "Abdi Mohamed",
        teacherIcon: "person",
        price: 60,
        duration: "17h 20min",
        description: "Learn the basics of programming and get started on your journey to becoming a software developer.",
        lesson: 30
    ),
    CourseManager(
        courseImage: "Web Development Fundamentals",
        courseName: "Web Development Fundamentals",
        teacherName: "Fatima Hassan",
        teacherIcon: "person",
        price: 39,
        duration: "16h 12min",
        description: "Explore the essential concepts of web development, including HTML, CSS, and JavaScript.",
        lesson: 80
    ),
    CourseManager(
        courseImage: "Data Science Basics",
        courseName: "Data Science Fundamentals",
        teacherName: "Yusuf Ali",
        teacherIcon: "person",
        price: 45,
        duration: "10h 15min",
        description: "Dive into the world of data science and learn the foundational skills for analyzing and interpreting data.",
        lesson: 25
    ),
    CourseManager(
        courseImage: "Mobile Development",
        courseName: "Mobile App Development",
        teacherName: "Nadia Abdi",
        teacherIcon: "person",
        price: 64,
        duration: "14h 5min",
        description: "Build mobile applications and explore the exciting field of mobile app development with the guidance of experienced instructors.",
        lesson: 85
    ),
    CourseManager(
        courseImage: "Graphic Design Principles",
        courseName: "Graphic Design Principles",
        teacherName: "Abdirahman Ahmed",
        teacherIcon: "person",
        price: 44,
        duration: "12h 8min",
        description: "Master the fundamental principles of graphic design and unleash your creativity in visual communication.",
        lesson: 40
    ),
    CourseManager(
        courseImage: "Machine Learning Essentials",
        courseName: "Machine Learning Essentials",
        teacherName: "Aisha Hassan",
        teacherIcon: "person",
        price: 95,
        duration: "18h 3min",
        description: "Explore the core concepts of machine learning and gain the skills to create intelligent systems that can learn from data.",
        lesson: 60
    ),
    CourseManager(
        courseImage: "Digital Marketing Strategies",
        courseName: "Digital Marketing Strategies",
        teacherName: "Omar Yusuf",
        teacherIcon: "person",
        price: 49,
        duration: "19h 4min",
        description: "Learn effective digital marketing strategies to promote products and services in the online world.",
        lesson: 18
    ),
    CourseManager(
        courseImage: "Photography Masterclass",
        courseName: "Photography Masterclass",
        teacherName: "Halima Abdirizak",
        teacherIcon: "person",
        price: 54,
        duration: "11h 23min",
        description: "Improve your photography skills and capture stunning images with the guidance of a seasoned photography expert.",
        lesson: 15
    ),
    CourseManager(
        courseImage: "Blockchain Fundamentals",
        courseName: "Blockchain Fundamentals",
        teacherName: "Fardowsa Ali",
        teacherIcon: "person",
        price: 30,
        duration: "13h 17min",
        description: "Dive into the world of blockchain technology and understand the fundamentals of decentralized and secure digital transactions.",
        lesson: 14
    ),
    CourseManager(
        courseImage: "Cybersecurity Basics",
        courseName: "Cybersecurity and Basics",
        teacherName: "Mustafa Farah",
        teacherIcon: "person",
        price: 90,
        duration: "20h 30min",
        description: "Discover the fundamental principles of cybersecurity and how to protect digital systems from potential threats.",
        lesson: 75
    ),
]
