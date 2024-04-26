//
//  StoryModels.swift
//  exampleSwiftUI
//
//  Created by lap le on 05/03/2024.
//

struct Choice {
    let text: String
    let destination: Int
}

struct StoryPage {
    let text: String
    let choices: [Choice]
    
    init(_ text: String, choices: [Choice]) {
        self.text = text
        self.choices = choices
    }
}

struct Story {
    let pages: [StoryPage]
    
    subscript(pageIndex: Int) -> StoryPage {
        return pages[pageIndex]
    }
}
