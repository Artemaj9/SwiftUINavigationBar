//
//  CustomNavLink.swift
//  ViewBuildersBootcamp
//
//  Created by Artem on 10.08.2023.
//

import SwiftUI



struct CustomNavLink<Label: View, Destination: View>: View {
    
    let destination: Destination
    let label: Label
    
    init(destination: Destination, @ViewBuilder label: () -> Label) {
        self.destination = destination
        self.label = label()
    }
    
    var body: some View {
        NavigationLink(
        destination:
            CustomNavBarContainerView(content: {
                destination
            })
            .toolbar(.hidden),
                       label: {
            label
        })
    }
}

struct CustomNavLink_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavView {
            CustomNavLink(
                destination: Text("Destination")) {
                    Text("CLICK ME")
                }
        }
    }
}
