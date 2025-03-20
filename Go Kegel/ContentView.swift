//
//  ContentView.swift
//  Go Kegel
//
//  Created by Chloe Wu on 3/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var currentScreen: Screen = .welcome
    
    enum Screen {
        case welcome
        case exercise
        case completion
    }
    
    var body: some View {
        NavigationView {
            Group {
                switch currentScreen {
                case .welcome:
                    WelcomeView(startExercise: { currentScreen = .exercise })
                case .exercise:
                    ExerciseView(onComplete: { currentScreen = .completion })
                case .completion:
                    CompletionView(restartExercise: { currentScreen = .exercise })
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct WelcomeView: View {
    let startExercise: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to Go Kegel")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Let's strengthen your pelvic floor muscles together")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Button(action: startExercise) {
                Text("Start Exercise")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

struct ExerciseView: View {
    let onComplete: () -> Void
    
    var body: some View {
        Text("Exercise View - Coming Soon")
    }
}

struct CompletionView: View {
    let restartExercise: () -> Void
    
    var body: some View {
        Text("Completion View - Coming Soon")
    }
}

#Preview {
    ContentView()
}
