//
//  QuotesIntroView.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/14/23.
//

import SwiftUI

struct QuotesIntroView: View {
    var body: some View {
        VStack {
            
            Text("Intro to using Quotes")
                .font(.system(.title))
            Divider()
            ScrollView{
                Text("Creating a String")
                    .font(.title2)
                Text("\"I'm a little lad who loves berries and cream\"")
                    .padding(.bottom)
                
                Text("Adding variables to a String")
                    .font(.title2)
                Text("var name = \"Bjorn Ragnarsson\"")
                Text("var string = \"My name is \\(name)\"")
                Text("The string should read \"My name is Bjorn Ragnarsson\"")
                    .padding(.bottom)
                
                
                
                Text("Using a String as a function parameter")
                    .font(.title2)
                Text("func getName (name: String){ return name }")
                    .padding(.bottom)
                Text("Using Strings as element parameters.")
                    .font(.title2)
                Text("Image(\"pictureName\") ")
                
                
                
            }
            Spacer()
            NextPageButton(title: "Test Your Knowledge",destination: QuotesQuizView())
            
        }
        
    }
}

struct QuotesIntroView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesIntroView().previewInterfaceOrientation(.landscapeLeft)
    }
}
