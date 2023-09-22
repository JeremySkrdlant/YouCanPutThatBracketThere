//
//  FunctionStructureIntroView.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/16/23.
//

import SwiftUI

enum BracketType{
    case openingParenthesis, closingParenthesis, openingCurlyBracket, closingCurlyBracket, none
}

struct FunctionStructureIntroView: View {
    @State var infoText = "Click on the brackets to see how they are used in the code."
    @State var chosenType:BracketType = .none
    
    var body: some View {
        VStack {
            Text("Function Structure")
                .font(.system(.title))
            Divider()
            VStack(alignment:.leading){
                HStack (spacing: 0){
                    Text("func ")
                    Text("nameOfFunction")
                    Text("(")
                        .bold()
                        .foregroundColor(chosenType == .openingParenthesis ? .orange: .gray)
                        .padding(.horizontal, chosenType == .openingParenthesis ? 5 : 0)
                
                    Text("paramter")
                    Text(":")
                    Text("type")
                    Text(")")
                        .bold()
                        .foregroundColor(chosenType == .closingParenthesis ? .orange: .gray)
                        .padding(.horizontal, chosenType == .closingParenthesis ? 5 : 0)
                    Text("{")
                        .bold()
                        .foregroundColor(chosenType == .openingCurlyBracket ? .orange: .gray)
                        .padding(.horizontal, chosenType == .openingCurlyBracket ? 5 : 0)
                }
                Text("Some Code ...")
                Text("}")
                    .bold()
                    .foregroundColor(chosenType == .closingCurlyBracket ? .orange: .gray)
                    .padding(.horizontal, chosenType == .closingCurlyBracket ? 5 : 0)
            }
            Text("Choose a bracket to see where it fits in the code.")
                .font(.system(size: 15))
                .bold()
                .padding(.top, 20)
            HStack (spacing: 50){
                Button("(") {
                    chosenType = .openingParenthesis
                    infoText = "Parameters of a function are surrounded by parenthesis."
                }
                
                Button(")") {
                    chosenType = .closingParenthesis
                    infoText = "This symbol will close out the list of parameters."
                }
                
                Button("{") {
                    chosenType = .openingCurlyBracket
                    infoText = "This is the beginning of the code block."
                }
                
                Button("}") {
                    chosenType = .closingCurlyBracket
                    infoText = "This closes the function."
                }
            }
            Divider()
            Text(infoText)
                
            Spacer()
            NextPageButton(destination: FunctionsBracketsQuiz())
        }
    }
}

struct FunctionStructureIntroView_Previews: PreviewProvider {
    static var previews: some View {
        FunctionStructureIntroView().previewInterfaceOrientation(.landscapeLeft)
    }
}
