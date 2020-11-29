//
//  AboutView.swift
//  lesson_1_DZ
//
//  Created by super_comp on 29.11.2020.
//

import SwiftUI

struct AboutView: View {
    
    @State var aboutShow: Bool = false
    
    var body: some View {
        
        VStack {
            Text("About This App 🚙")
                .simultaneousGesture(TapGesture().onEnded {
                    self.aboutShow.toggle()
                })
                .padding().font(.subheadline).foregroundColor(.blue)
        }
        .sheet(isPresented: $aboutShow, onDismiss: { print("Modal Cloased") }) {
            AboutViewModal()
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}


//MARK: - Views

struct AboutViewModal: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Close")
            }).padding()
            Spacer()
            
            Image(systemName: "info.circle.fill")
                .foregroundColor(.blue)
                .font(.largeTitle  )
    
            Text("This app can help you buy best car ever!")
                .font(.subheadline)
                .foregroundColor(.blue)
                .padding()
    
            Spacer()
            Spacer()
        }
    }
}

