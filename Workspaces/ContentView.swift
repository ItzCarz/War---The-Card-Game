//
//  ContentView.swift
//  Workspaces
//
//  Created by Carlos David on 4/26/25.
//

import SwiftUI

struct ContentView: View {
    
   @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
   @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
            Spacer()
            Image("logo")
            Spacer()
            HStack {
                    Spacer()
                Image(playerCard)
                    Spacer()
                Image(cpuCard)
                    Spacer()
                }
                Spacer()

                // Button is the actual function, and label is on screen
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
        
    }
    
    func deal() {
        // Randomize the players cards
        playerCard = "card" + String(Int.random(in: 2...14))
        
        // Randomize the CPUs cards
        cpuCard = "card" + String(Int.random(in: 2...14))
        
        // Update the scores
        if playerCard > cpuCard {
            playerScore += 1
        } else if cpuCard > playerCard {
            cpuScore += 1
        }
        else {
            // Tie
            
        }
    }
}

 struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

