//
//  WinningScreenView.swift
//  YouCanPutThatBracketThere!
//
//  Created by Kenli Shaw on 9/21/23.
//

import SwiftUI

struct WinningScreenView: View {
    var body: some View {
        Image("youWin").resizable().frame(width: 1100, height: 420).aspectRatio(contentMode: .fit)
    }
}

struct WinningScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WinningScreenView().previewInterfaceOrientation(.landscapeLeft)
    }
}
