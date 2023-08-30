//
//  OnboardingView.swift
//  Restart App
//
//  Created by Rushikesh Suradkar on 30/08/23.
//

import SwiftUI

struct OnboardingView: View {
    //MARK : PROPERTY
    @AppStorage("onbaording") var isOnboardingViewActive : Bool = true
    
    @State private var buttonWidth : Double = UIScreen.main.bounds.width-80
    @State private var buttonOffset: CFloat = 0
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20) {
                //MARK: Header
                Spacer()
                
                VStack(spacing: 0){
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                         It's not how much you give but
                         how much you love we put into giving.
                        """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                }
                
                //MARK: Center
                ZStack {
                    ZStack{
                        CircleGroupView(ShapeColour: .white, ShapeOpacity: 0.2)
                        
                        Image("character-1")
                            .resizable()
                            .scaledToFit()
                    }
                }
                Spacer()
                
                //MARK: Footer
                ZStack{
                    Capsule()
                        .fill(.white.opacity(0.2))
                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: CGFloat(buttonOffset) + 80)
                        
                        Spacer()
                        
                    }
                    
                    HStack {
                        ZStack{
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .offset(x:CGFloat(buttonOffset))
                        .frame(width: 80, height: 80, alignment: .center)
                        .gesture(
                            DragGesture()
                                .onChanged{ gesture in
                                    if gesture.translation.width > 0 && buttonOffset <= Float(buttonWidth - 80) {
                                        buttonOffset = CFloat(gesture.translation.width)
                                    }
                                }
                                .onEnded {_ in
                                    if buttonOffset > Float(buttonWidth) / 2 {
                                        buttonOffset = CFloat(buttonWidth - 80)
                                        isOnboardingViewActive = false
                                    } else {
                                        buttonOffset = 0
                                    }
                                }
                        )
                        Spacer()
                    }
                }//: ZSTACK
                .frame(width:buttonWidth, height: 80, alignment: .center)
                .padding()
            }
        }//: ZSTACK
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
