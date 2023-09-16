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
