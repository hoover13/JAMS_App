//
//  Chapter4.1View.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/16/23.
//

import SwiftUI

struct Chapter4_1View: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
    @State private var imageNames = ["road","cinderella","castle","PrincessRoom","road","shop"]
    @State private var currentIndex = 0
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea() 
             
            VStack { 
                Text("Chapter 4")
                    .font(.largeTitle)
                    .bold()
                
                TabView(selection: $currentIndex) {
                    ForEach(0..<imageNames.count) { index in
                        Image(imageNames[index])
                            .resizable()
                            .scaledToFit()
                      
//                        Text(storyForChapter3[index])
//                            .font(.title)
//                            .tag(index)
                    }
                }
                .cornerRadius(30)
                .padding(25)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .onChange(of: currentIndex) { newIndex in
                    if newIndex == imageNames.count - 1 {
                        showAlert = true
                    }
                }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("This is the end of Chapter 3"),
                        message: Text("Now you can go to Chapter 4"),
                        dismissButton: .default(Text("OK")) {
                            chapterUnlocker.isChapter5Disabled = false
                        }
                    )
                }
                
                ScrollView {
                    
                    Text("""
    Although the story's title and main character's name change in different languages, in English-language folklore Cinderella is an archetypal name. The word Cinderella has, by analogy, come to mean someone whose attributes are unrecognized, or someone unexpectedly achieves recognition or success after a period of obscurity and neglect. In the world of sports, "a Cinderella" is used for an underrated team or club winning over stronger and more favored competitors. The still-popular story of Cinderella continues to influence popular culture internationally, lending plot elements, allusions, and tropes to a wide variety of media .
     
    """)
                }

                .padding()
            }
        }
    }
}

#Preview {
    Chapter4_1View()
}
