//
//  SquareBracketQuiz.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/16/23.
//

import SwiftUI

struct SquareBracketQuiz: View {
    var body: some View {
        VStack {
            Text("Place the square brackets in the correct spot")
                .font(.system(.title))
            Divider()
            //Add a challenge that is an array. The use has to put in the square brackets and commas and quotes since it is an array of 2 or three strings. 
            Spacer()
            NextPageButton(destination: FinalChallenge())
        }
        
    }
}

struct SquareBracketQuiz_Previews: PreviewProvider {
    static var previews: some View {
        SquareBracketQuiz()
    }
}
