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
                //Show how to create a string
                
                Text("Adding variables to a String")
                //Give an example of a string with a variable
                
                Text("Using a String as a parameter")
                //Show a string going into an Image( )
                
            }
            Spacer()
            NextPageButton(title: "Test Your Knowledge",destination: QuotesQuizView())
            
        }
        
    }
}

struct QuotesIntroView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesIntroView()
    }
}
