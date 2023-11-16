//
//  SheetViewFive.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/16/23.
//

import SwiftUI

struct SheetViewFive: View {
    @State private var rotationAngle: Double = 0.0
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Image("finalPicture")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                    .padding()
                    
                Text("\(characterNames[0]) lived in the basement of her evil step familys house, from rags to riches, she never learned the truth of that night. How \(characterNames[1]) sold her slippers to the \(characterNames[3]), where they sit behind the shops window, glistening, for all to see. ")
                    .padding()
                Spacer()
                Image("glassSlipper")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .rotation3DEffect(
                        .degrees(rotationAngle),
                        axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
                    )
                    .onTapGesture {
                       
                            withAnimation(Animation.linear(duration: 4.0).repeatForever(autoreverses: false)) {
                                self.rotationAngle = 360.0
                                    
                                
                            }

                    }
                Spacer()
                Text("To be continued...")
                Spacer()
                
                
            }
        }
    }
}

#Preview {
    SheetViewFive()
}
