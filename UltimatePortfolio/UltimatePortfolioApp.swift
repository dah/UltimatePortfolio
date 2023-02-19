//
//  UltimatePortfolioApp.swift
//  UltimatePortfolio
//
//  Created by Dan Hancu on 19/02/2023.
//

import SwiftUI

@main
struct UltimatePortfolioApp: App {
    @State var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } content: {
                ContentView()
            } detail: {
                DetailView()
            }
            .environment(\.managedObjectContext, dataController.container.viewContext)
            .environmentObject(dataController)
        }
    }
}

struct Previews_UltimatePortfolioApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
