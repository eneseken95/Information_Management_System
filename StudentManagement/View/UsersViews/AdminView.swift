//
//  AdminView.swift
//  StudentManagement
//
//  Created by Enes Eken 2 on 10.12.2024.
//

import SwiftUI

struct AdminView: View {
    
    var userName: String
    var onDismiss: () -> Void

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)

            VStack {
                Text("Admin View")
                    .font(.largeTitle)
                    .foregroundColor(.green)

                Text("Welcome, \(userName)!")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()

                Button("Çıkış yap") {
                    onDismiss()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        .navigationBarBackButtonHidden(true)
        .statusBarHidden()
    }
}

#Preview {
    AdminView(userName: "AyseDemir", onDismiss: {
        print("Çıkış yapıldı")
    })
}
