//
//  ContentView.swift
//  introToSwiftUI
//
//  Created by John Pill on 10/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var friends = 0
    @State var favMusic = ""
    
    var body: some View {
        
        NavigationStack {
            VStack {
                // Lets create an info card.
                HStack {
                    Image("john")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                        .frame(width: 150, height: 150)
                    
                    VStack(alignment: .leading) {
                        Text("John Pill")
                            .font(.headline)
                        Text("01234 567 890")
                        Text("johnpill1@exe-coll.ac.uk")
                        Text("Favourite Music: \(favMusic)")
                        
                        Divider()
                        Text("Friends: \(friends)")
                    }
                }
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                .shadow(radius: 5)
                .padding()
                
                Spacer()
                
                TextField("Favourite Music: ", text: $favMusic)
                    .padding()
                
                
                Button("Friends + 1") {
                    updateFriends()
                }
                .buttonStyle(.borderedProminent)
                
               
                
                
            }.navigationTitle("iFriends")
        }
    }
    
    func updateFriends() {
        friends += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



