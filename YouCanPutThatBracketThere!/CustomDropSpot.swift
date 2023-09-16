//
//  CustomDropSpot.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/14/23.
//

import SwiftUI

struct CustomDropSpot: View {
    var correctValue:String?
    var puzzleComplete = false
    var succesCallback:(UUID)->Void = {_ in}
    
    @State private var currentString = ""
    @State private var successfulDrop = false;
    var body: some View {
        if (successfulDrop){
            Text(currentString)
                .foregroundColor(.blue)
        }else {
            if (!puzzleComplete){
                Color.white
                    .frame(width: 20, height: 40)
                    .border(Color.gray.opacity(0.3))
                    .shadow(radius: 2)
                    .padding(.horizontal, 5)
                    .dropDestination (for: DragTextItem.self){ items, location in
                        if let correctValue = correctValue{
                            if items.count > 1
                            {
                                return false
                            }
                            
                            if correctValue == items[0].text {
                                currentString = items[0].text
                                successfulDrop = true
                                succesCallback(items[0].id)
                                return true
                            }
                        }
                        //play a bad sound
                        return false
                    }
            }else {
                Color.white
                    .frame(width:0, height: 0)
            }
        }
}

struct CustomDropSpot_Previews: PreviewProvider {
    static var previews: some View {
        CustomDropSpot()
        }
    }
}


