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
                Text("Basic String Usage")
                Text("Variables in a String")
                Text("String as a paramgeter")
                
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
