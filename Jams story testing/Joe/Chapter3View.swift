//
//  Chapter3View.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/15/23.
//

import SwiftUI

struct Chapter3View: View {
    @EnvironmentObject var chapterUnlocker: ChapterUnlocker
//    @Binding var navigateToNextChapter: Bool
    @State private var storyForChapter3 = ["Chapter begins with Princess on her way to the restroom, the trio lagging not too far behind.", "While the Princess is in the restroom unloosing the caboose, the three covetous women attempt to take her glass slippers from the shoe cupboard and replace them with the cheap plastic knockoffs, but fail due to hearing the latrine flush sooner than expected.", "The trio spend their night looking for an opportunity to make the swap, but can’t find another time to do so.(Attempts: Offering to polish her slippers(Failure due to the princess refusing request), Disguising as the foot massager(Failure due to all eyes being on the shoes), During the shoeless contemporary dance(Failure due to shoes being locked within cage))", "The Princess enjoys the remainder of the night with her Prince. "]
    @State private var currentIndex = 0
    @State private var showAlert = false
    

    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(0..<storyForChapter3.count) { index in
                Text(storyForChapter3[index])
                    .tag(index)
            }
        }
        .padding(25)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .onChange(of: currentIndex) { newIndex in
            if newIndex == storyForChapter3.count - 1 {
                showAlert = true
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("This is the end of Chapter 3"),
                message: Text("Now you can go to Chapter 4"),
                dismissButton: .default(Text("OK")) {
                    chapterUnlocker.isChapter4Disabled = false
                }
            )
        }
    }
}

//#Preview {
//    Chapter3View()
//}
