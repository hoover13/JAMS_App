//
//  JoeChapterTextingView.swift
//  Jams story testing
//
//  Created by Min Thu Khine on 11/16/23.
//

import SwiftUI

struct JoeChapterTextingView: View {
    var body: some View {
        
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            
            VStack {
                
                Text("Chapter 3")
                    .font(.largeTitle)
                    .bold()
                ScrollView {
                    
                    Text("""
        Although the story's title and main character's name change in different languages, in English-language folklore Cinderella is an archetypal name. The word Cinderella has, by analogy, come to mean someone whose attributes are unrecognized, or someone unexpectedly achieves recognition or success after a period of obscurity and neglect. In the world of sports, "a Cinderella" is used for an underrated team or club winning over stronger and more favored competitors. The still-popular story of Cinderella continues to influence popular culture internationally, lending plot elements, allusions, and tropes to a wide variety of media.
        Although the story's title and main character's name change in different languages, in English-language folklore Cinderella is an archetypal name. The word Cinderella has, by analogy, come to mean someone whose attributes are unrecognized, or end.

        """)
                    .font(.system(size: 32))
                    .padding()
                    
                    
                    NavigationLink {
                        MainView()
                    } label: {
                        Text("Finish")
                    }
                    

                }
            }
        }
    }
}

#Preview {
    JoeChapterTextingView()
}
