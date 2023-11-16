//
//  TestingView.swift
//  Jams story testing
//
//  Created by Hoover on 11/11/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    @State private var navigateToNextChapter = false
    
    var body: some View { 
        NavigationStack {
            ZStack {
//                Image("bg")
                LinearGradient(
                           gradient: Gradient(colors: [Color.white, Color.cyan]), // You can adjust colors as needed
                           startPoint: .topTrailing,
                           endPoint: .bottomLeading
                       )
                       .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 80) {
                    NavigationLink(destination: {
                        Chapter1View()
                    }, label: {
//                        Text("Chapter 1")
                        ChapterButtonView(number: 1)
                    })
                       
                    NavigationLink(destination: {
                        Chapter2View()
                            .navigationBarHidden(true)
                    }, label: {
//                        Text("Chapter 2")
                        ChapterButtonView(number: 2)
//                            .opacity(chapterUnlocker.isChapter2Disabled ? 0.2 : 1.0)
                    })
//                    .disabled(chapterUnlocker.isChapter2Disabled)
                    
                    NavigationLink(destination: {
                        JoeChapterTextingView()
                    }, label: {
//                        Text("Chapter 3")
                        ChapterButtonView(number: 3)
//                            .opacity(chapterUnlocker.isChapter3Disabled ? 0.2 : 1.0)
                    })
//                    .disabled(chapterUnlocker.isChapter3Disabled)
                    
                    NavigationLink(destination: {
                        Chapter4View()
                    }, label: {
//                        Text("Chapter 4")
                        ChapterButtonView(number: 4)
//                            .opacity(chapterUnlocker.isChapter4Disabled ? 0.2 : 1.0)
                    }) 
//                    .disabled(chapterUnlocker.isChapter4Disabled)
                    
                    NavigationLink(destination: {
                        Chapter5View()
                    }, label: {
//                        Text("Chapter 5")
                        ChapterButtonView(number: 5)
//                            .opacity(chapterUnlocker.isChapter5Disabled ? 0.2 : 1.0)
                    })
//                    .disabled(chapterUnlocker.isChapter5Disabled)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ChapterButtonView: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    var number: Int
 
    var body: some View {
            Text("Chapter \(number)")
//            .font(Font.custom("Zapfino", size: 9))
                .padding()
                .foregroundColor(.black)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 2)
                )
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ChapterUnlocker())
    }
}
