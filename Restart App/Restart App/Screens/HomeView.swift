//
//  HomeView.swift
//  Restart App
//
//  Created by Rushikesh Suradkar on 30/08/23.
//

import SwiftUI

struct HomeView: View {
    //MARK: PROPERTY
    @AppStorage("onbaording") var isOnboardingViewActive : Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            //MARK: Header
            
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColour: .gray, ShapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            
            //MARK: Center
            Text("The time that leads to mastery is depedent on the intensity of our focours")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            
            //MARK: Footer
            Spacer()
            
            Button(action:{
                isOnboardingViewActive = true
            }){
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }//: VStack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
