//
//  SettingView.swift
//  exampleSwiftUI
//
//  Created by lap le on 04/03/2024.
//

import SwiftUI


struct FunFactView: View {

    @State private var funFact = information.funFacts.randomElement()!
    @State private var isLoading = false
        
    func doAsyncWork() async {
        isLoading = true
        try? await Task.sleep(nanoseconds: 1_500_000_000)
        funFact = information.funFacts.randomElement()!
        isLoading = false
    }

    func handleShowAnotherFact() {
        Task {
            await doAsyncWork()
        }
    }
    
    var body: some View {
        VStack {
            Text("Fun Facts")
                .font(.largeTitle)
                .fontWeight(.bold)

            Group {
                    if isLoading {
                        ProgressView()
                            .padding()
                            .frame(minHeight: 400)
                    } else {
                        Text(funFact)
                            .padding()
                            .font(.title)
                            .frame(minHeight: 400)
                    }
                }
            
            Button("Show Another Fact", systemImage: "chevron.right.2") {
                handleShowAnotherFact()
            }
            .padding()
            .background(Color.cyan)
            .cornerRadius(15)
            .tint(Color.white)
            .fontWeight(.bold)
            .disabled(isLoading)
        }
        .padding()
    }
}


struct FunFactView_Previews: PreviewProvider {
    static var previews: some View {
        FunFactView()
    }
}
