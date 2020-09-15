//
//  ContentView.swift
//  SKOverlayForSwiftUI
//
//  Created by Takuya Aso on 2020/09/16.
//

import SwiftUI
import StoreKit

struct ContentView: View {
    @State private var showSKOverlay = false

    var body: some View {
        Button("オススメアプリを表示") {
            self.showSKOverlay.toggle()
        }
        .appStoreOverlay(isPresented: $showSKOverlay) {
            SKOverlay.AppConfiguration(appIdentifier: "1234567890", position: .bottomRaised)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
