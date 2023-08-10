//
//  AppNavBarView.swift
//  ViewBuildersBootcamp
//
//  Created by Artem on 10.08.2023.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                CustomNavLink(destination:
                                Text("Destination")
                    .customNavigationTitle("Second Screen")
                    .customNavigationSubTitle("Subtitle should be showing")
                ) {
                    Text("Navigate")
                }
            }
            .customNavBarItems(title: "New title!", subtitle: nil, backButtonHidden: false)
        }
    }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}


extension AppNavBarView {
    private var defaultNavView: some View {
        NavigationView {
            ZStack {
                Color.green.ignoresSafeArea()
                NavigationLink(
                    destination:
                        Text("Destination")
                        .navigationTitle("Title2")
                        .navigationBarBackButtonHidden(false),
                    label: {
                        Text("Navigate")
                    })
            }
            .navigationTitle("Nav title here")
        }
    }
}
