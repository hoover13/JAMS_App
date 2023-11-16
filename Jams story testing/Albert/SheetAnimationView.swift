//
//  SheetAnimationView.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/16/23.
//

import SwiftUI

struct SheetAnimationView: View {
    
    @State private var rotationAngle: Double = 0.0
     
    var body: some View {
        VStack {
            Image("castle") 
                .resizable()
                .aspectRatio(contentMode: .fit)
                .rotation3DEffect(  
                    .degrees(rotationAngle),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                )
                .onTapGesture {
                    withAnimation(Animation.linear(duration: 2.0).repeatForever(autoreverses: false)) {
                        self.rotationAngle = 360.0
                        
                    }
                    
                }
           
                
        }
    }
}

#Preview {
    SheetAnimationView()
}
