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
            HStack{
                Spacer()
                NavigationLink("Next", destination: QuotesQuizView())
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
}

struct QuotesIntroView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesIntroView()
    }
}
