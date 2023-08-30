//
//  ContentView.swift
//  Restart App
//
//  Created by Rushikesh Suradkar on 30/08/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onbaording") var isOnboardingViewActive : Bool = true
    
    var body: some View {
        ZStack{
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
