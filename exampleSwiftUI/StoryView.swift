//
//  StoryView.swift
//  exampleSwiftUI
//
//  Created by lap le on 04/03/2024.
//

import SwiftUI

struct StoryView: View{
    var body: some View{
        NavigationStack {
            StoryPageView(story: story, pageIndex: 0)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
