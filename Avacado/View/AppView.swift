//
//  AppView.swift
//  Avacado
//
//  Created by Kathiravan Murali on 31/01/24.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        
        TabView
        {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningViewStage()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Recipes")
                }
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
        }//tabview
        .tabViewStyle(DefaultTabViewStyle())
        .ignoresSafeArea(.all)
        .accentColor(Color.primary)
        .onAppear {
                    // This ensures that the TabView background is set correctly
                    UITabBar.appearance().isTranslucent = false
                }
    }
}

#Preview {
    AppView()
}
