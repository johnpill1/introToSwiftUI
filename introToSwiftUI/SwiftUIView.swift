//
//  SwiftUIView.swift
//  introToSwiftUI
//
//  Created by John Pill on 10/01/2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.headline)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
