//
//  CircleGroupView.swift
//  Restart App
//
//  Created by Rushikesh Suradkar on 31/08/23.
//

import SwiftUI

struct CircleGroupView: View {
    //MARK: Property
    @State var ShapeColour : Color
    @State var ShapeOpacity: Double
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShapeColour.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColour.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color("ColorBlue")
                .edgesIgnoringSafeArea(.all)
            CircleGroupView(ShapeColour: Color.white, ShapeOpacity: 0.2)
        }
    }
}
