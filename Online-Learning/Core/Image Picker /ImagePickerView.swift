//
//  ImagePicker.swift
//  Online-Learning
//
//  Created by Moha Maanka on 12/20/23.
//

import SwiftUI


struct ImagePickerView: UIViewControllerRepresentable {
    @Binding var selectedImage : UIImage?
    @Environment(\.presentationMode) var presentationMode
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
    
    
    
}


extension ImagePickerView {
    class Coordinator : NSObject , UINavigationControllerDelegate, UIImagePickerControllerDelegate{
        
        let parent: ImagePickerView
        
        init(_ parent: ImagePickerView){
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let image = info[.originalImage] as? UIImage else {return}
            parent.selectedImage = image
            parent.presentationMode.wrappedValue.dismiss()
        }
        
        
        
    }
}
