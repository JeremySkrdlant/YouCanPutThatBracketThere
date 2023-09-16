//
//  NextPageButton.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/16/23.
//

import SwiftUI

struct NextPageButton: View {
    var title = "Next Challenge"
    var destination: any View
    
    var body: some View {
        HStack{
            Spacer()
            NavigationLink(title, destination: AnyView(destination))
                .bold()
                .font(.system(size: 30))
                .kerning(1.2)
            Spacer()
        }
        .padding(.vertical, 10)
        .background(
            Color.white
                .border(Color.gray.opacity(0.4))
        )
        .padding()
    }
}

struct NextPageButton_Previews: PreviewProvider {
    static var previews: some View {
        NextPageButton(destination: Color.blue)
    }
}
