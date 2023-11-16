//
//  Chapter5View.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/15/23.
//

import SwiftUI

enum SheetTypes: Identifiable {
    case first, second, third, fourth, fifth
    
    var id: Int {
        hashValue
    }
}


    
struct Chapter5View: View {
    @State private var activeSheet: SheetTypes?
    @State var isAnimated: Bool = false
    @State private var rotationAngle: Double = 0.0
    
    
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .green], startPoint: .topTrailing, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("cloud")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                    
                    Image("cloud")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 100)
                    Image("cloud")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 100)
                    
                    
                }
                Text("Chapter 5:")
                    .bold()
                Text("Not So Happily Ever After?")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                
                Image("castle")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .rotation3DEffect(
                        .degrees(rotationAngle),
                        axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
                    )
                    .onTapGesture {
                        withAnimation(Animation.linear(duration: 4.0).repeatForever(autoreverses: false)) {
                            self.rotationAngle = 360.0
                                
                            
                        }
                    }
                Text("Tap the castle, unless you're chicken.")
                    .foregroundColor(.black)
                    .bold()
                    .padding()
                   
                    
                HStack {
                    
                    Button(action: {
                        self.activeSheet = .first
                    }, label: {
                        Text("Part 1")
                            .frame(width: 80, height: 45)
                            .padding([.trailing, .leading])
                            
                            .background(.blue)
                            .foregroundColor(.white)
                            .bold()
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                           
                           
                            
                           
                        
                        Button(action: {
                            self.activeSheet = .second
                        }, label: {
                            Text("Part 2")
                                .frame(width: 80, height: 45)
                                .padding([.trailing, .leading])
                                .background(.blue)
                                .foregroundColor(.white)
                                .bold()
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                            
                            Button(action: {
                                self.activeSheet = .third
                            }, label: {
                                Text("Part 3")
                                    .frame(width: 80, height: 45)
                                    .padding([.trailing, .leading])
                                    .background(.blue)
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .cornerRadius(10)
                                
                            })
                                
                               
                        })
                        
                        
                      
                    })
                }
                HStack {
                    Button(action: {
                        self.activeSheet = .fourth
                    }, label: {
                        Text("Part 4")
                            .frame(width: 80, height: 45)
                            .padding([.trailing, .leading])
                            .background(.blue)
                            .foregroundColor(.white)
                            .bold()
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .cornerRadius(10)
                        
                        Button(action: {
                            self.activeSheet = .fifth
                        }, label: {
                            Text("Part 5")
                                .frame(width: 80, height: 45)
                                .padding([.trailing, .leading])
                                .background(.blue)
                                .foregroundColor(.white)
                                .bold()
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                        })
                        
                        
                        
                        
                        
                    })
                }
                Spacer()
                       

                            
                    }
            
            .sheet(item: self.$activeSheet, onDismiss: {print("Sheet closed")}) { item in
                switch item {
                case .first:
                    SheetViewOne()
                case .second:
                    SheetViewTwo()
                case .third:
                    SheetViewThree()
                case .fourth:
                    SheetViewFour()
                case .fifth:
                    SheetViewFive()
               
                
                    
                    
                }
                
            }
                    
                     
            
                            
                        }
                    }
       
        
           
                
                
             
                        
                    
                }
                
                        
              
                
            
                
            
            
        
        
    
    
    #Preview {
        Chapter5View()
    }



