//
//  CustomNavBarView.swift
//  ViewBuildersBootcamp
//
//  Created by Artem on 10.08.2023.
//

import SwiftUI

struct CustomNavBarView: View {
    
    @Environment(\.presentationMode) var presentationMode
    let showBackButton: Bool
    let title: String
    let subtitle: String?
    
    var body: some View {
        
            HStack() {
                if showBackButton {
                    BackButton
                }
                Spacer()
                titleSection
                Spacer()
                if showBackButton {
                    BackButton
                        .opacity(0)
                }
                
                
            }
            .padding()
            .font(.headline)
            .opacity(1)
            .foregroundColor(.purple)
            .background(Color.orange).opacity(0.5)
            
        }
}


extension CustomNavBarView {
    
    private var BackButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "chevron.left")
                .scaleEffect(1.4)
               
        })
    }
    
    private var titleSection: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            if let subtitle = subtitle {
                Text(subtitle)
            }
        }
    }
}
struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomNavBarView(showBackButton: true, title: "Title", subtitle: "Subtitle")
            Spacer()
        }
    }
}
