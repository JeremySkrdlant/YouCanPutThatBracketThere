//
//  FunctionStructureIntroView.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/16/23.
//

import SwiftUI

struct FunctionStructureIntroView: View {
    var body: some View {
        VStack {
            Text("Function Structure")
            
            HStack{
                Text("func")
                Text("nameOfFunction")
                Text("(")
                Text("paramter")
                Text(":")
                Text("type")
                Text(")")
                Text("{")
            }
            Text("Some Code ...")
            Text("}")
            Spacer()
            HStack{
                Spacer()
                NavigationLink("NextChallenge", destination: FunctionsBracketsQuiz())
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

struct FunctionStructureIntroView_Previews: PreviewProvider {
    static var previews: some View {
        FunctionStructureIntroView()
    }
}
