//
//  SquareBracketsIntro.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/16/23.
//

import SwiftUI

struct SquareBracketsIntro: View {
    var body: some View {
        VStack {
            Text("Square brackets & Arrays")
                .font(.system(.title))
            Divider()
            Spacer()
            NextPageButton(destination: SquareBracketQuiz())
        }
    }
}

struct SquareBracketsIntro_Previews: PreviewProvider {
    static var previews: some View {
        SquareBracketsIntro()
    }
}
