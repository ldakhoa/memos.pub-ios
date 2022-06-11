//
//  TabBarView.swift
//  Memosdotpub
//
//  Created by Khoa Le on 11/06/2022.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    selection == 0 ? Image(AssetProvider.homeSelected) : Image(AssetProvider.home)
                    Text("Home")
                }
                .tag(0)
            
            ContentView()
                .tabItem {
                    selection == 1 ? Image(AssetProvider.readLaterSelected) : Image(AssetProvider.readLater)
                    Text("Read Later")
                }
                .tag(1)
     
            ContentView()
                .tabItem {
                    selection == 2 ? Image(AssetProvider.settingsSelected) : Image(AssetProvider.settings)
                    Text("Settings")
                }
                .tag(2)
        }
        .accentColor(.title)
    }
}

#if DEBUG
struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
        
    }
}
#endif
