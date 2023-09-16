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
                VStack{
                    HStack (alignment:.top){
                        VStack{
                            Text("Quotes ")
                                .bold()
                                .foregroundColor(.black)
                            Text("\" \"")
                                .font(.system(size: 40))
                                .foregroundColor(.indigo)
                        }.frame(width: 150)
                        VStack{
                            Text("Parenthasis")
                                .bold()
                                .foregroundColor(.black)
                            Text("( )")
                                .font(.system(size: 40))
                                .foregroundColor(.indigo)
                                .padding(.bottom, 20)
                        }.frame(width: 150)
                    }
                    HStack(alignment:.top){
                        VStack{
                            Text("Curly Brackets")
                                .bold()
                                .foregroundColor(.black)
                            Text("{ }")
                                .font(.system(size: 40))
                                .foregroundColor(.indigo)
                                .padding(.bottom, 20)
                        }.frame(width: 150)
                        VStack{
                            Text("Square Brackets")
                                .bold()
                                .foregroundColor(.black)
                            Text("[ ]")
                                .font(.system(size: 40))
                                .foregroundColor(.indigo)
                        }.frame(width: 150)
                    }
                    
                }
                Spacer()
                NextPageButton(title: "Let's Begin!", destination: QuotesIntroView())
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
