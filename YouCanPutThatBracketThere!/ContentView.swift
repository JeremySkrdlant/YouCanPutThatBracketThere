//
//  ContentView.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Text("Characters that surround stuff.")
                    .font(.system(.title))
                Divider()
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Quotes ")
                            .bold()
                            .foregroundColor(.black)
                        Text("\" \"")
                            .font(.system(size: 50))
                            .foregroundColor(.indigo)
                        
                        Text("Parenthasis")
                            .bold()
                            .foregroundColor(.black)
                        Text("( )")
                            .font(.system(size: 50))
                            .foregroundColor(.indigo)
                            .padding(.bottom, 20)
                    }
                    Spacer()
                    VStack{
                        Text("Curly Brackets")
                            .bold()
                            .foregroundColor(.black)
                        Text("{ }")
                            .font(.system(size: 50))
                            .foregroundColor(.indigo)
                            .padding(.bottom, 20)
                        
                        Text("Square Brackets")
                            .bold()
                            .foregroundColor(.black)
                        Text("[ ]")
                            .font(.system(size: 50))
                            .foregroundColor(.indigo)
                    }
                    Spacer()
                    
                }
                Spacer()
                HStack{
                    Spacer()
                    NavigationLink("Let's Begin!", destination: QuotesIntroView())
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
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
