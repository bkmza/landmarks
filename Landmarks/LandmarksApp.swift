//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Ilya Usikov on 4/8/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelDate = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(ModelData())
        }
    }
}
