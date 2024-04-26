//
//  Data.swift
//  exampleSwiftUI
//
//  Created by lap le on 04/03/2024.
//

import Foundation
import SwiftUI

struct Info {
    let images: [String]
    let name: String
    let userName: String
    let story: String
    let hobbies: [String]
    let foods: [String]
    let colors: [Color]
    let funFacts: [String]
}

let information = Info(
    images: [
        "vietnam-bridge-thumbnail",
        "stary-night-cat",
        "https://assets.alexandria.kodeco.com/books/35e7aced11dae16036897e3c91d92b539052d652baffbb54bb290d6ed22fdc9b/images/adc4f9c515637cd0c242d74eae43baef/original.png",
        "https://i.pinimg.com/564x/3f/24/7f/3f247fb06db0802a0e6182ba8b0db242.jpg",
        "https://i.pinimg.com/564x/65/f0/b4/65f0b46ea5697aeb2ec0a0e1d24b92ca.jpg",
        "https://i.pinimg.com/564x/01/aa/04/01aa0493e39b4126525c4f9264247909.jpg",
        "https://i.pinimg.com/564x/f0/3a/68/f03a686d41b7e375981bf879f0b2b864.jpg",
        "https://i.pinimg.com/564x/90/97/0a/90970ab2be52dbc05c082be043d9b0b8.jpg",
        "https://i.pinimg.com/564x/a3/7f/2b/a37f2bb289cbcf528968da0d2b430434.jpg",
        "https://i.pinimg.com/564x/61/d5/7a/61d57a1242eb21fb8e28c7eb4630bc08.jpg",
        "https://i.pinimg.com/564x/a9/8c/ef/a98cef81d9968637981fed0a46fccd9b.jpg",
        "https://i.pinimg.com/564x/9e/22/47/9e224771cb39d6814fafd6bef3e390a2.jpg",
        "https://i.pinimg.com/736x/d8/e3/f8/d8e3f81a3094730df6424615c3838738.jpg",
        "https://i.pinimg.com/564x/1c/a8/ef/1ca8efe27b45ae8b5e0490ce3f81c30e.jpg",//bee strong
    ],
    name: "How are you from?",
    userName: "Le van Lap",
    story: "A story can be about anything you can dream up. There are no right answers, there is no one else.\n\nNeed some inspiration?\n• 🐶🐱🛶️🎭🎤🎧🎸\n• 🏄‍♀️🚵‍♀️🚴‍♀️⛵️🥾🏂⛷📚\n• ✍️🥖☕️🏋️‍♂️🚲🧗‍♀️ ",
    hobbies: ["bicycle", "ticket.fill", "book.fill"],
    foods: ["🥐", "🌮", "🍣"],
    colors: [Color.blue, Color.purple, Color.pink],
    funFacts: [
        "The femur is the longest and largest bone in the human body.",
        "The moon is 238,900 miles away.",
        "Prince’s last name was Nelson.",
        "503 new species were discovered in 2020.",
        "Ice is 9 percent less dense than liquid water.",
        "You can spell every number up to 1,000 without using the letter A.\n\n...one, two, three, four...ninety-nine...nine hundred ninety-nine 🧐",
        "A collection of hippos is called a bloat.",
        "White sand beaches are made of parrotfish poop.",
    ]
)
