//
//  QuotesQuizView.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/14/23.
//

import SwiftUI

struct QuotesQuizView: View {
    @State var thingsToDrop = [DragTextItem(text: "\""), DragTextItem(text: "\"")]
    var body: some View {
        VStack{
            Text("Drop the Quotes in the correct Spots.")
                .font(.system(.title))
            Divider()
            HStack (spacing:0){
                HStack(spacing:0){
                    Text("Text(")
                    CustomDropSpot(correctValue: "\""){
                        id in
                        thingsToDrop = thingsToDrop.filter({ item in
                            return item.id != id
                        })
                    }
                    Text("You paid \\")
                    CustomDropSpot(puzzleComplete: thingsToDrop.count == 0)
                    Text("(")
                    CustomDropSpot(puzzleComplete: thingsToDrop.count == 0)
                    Text("amount")
                    CustomDropSpot(puzzleComplete: thingsToDrop.count == 0)
                    Text(") ")
                }
                HStack(spacing: 0){
                    CustomDropSpot(puzzleComplete: thingsToDrop.count == 0)
                    Text("tip.")
                    CustomDropSpot(correctValue: "\"")
                    {
                        id in
                        thingsToDrop = thingsToDrop.filter({ item in
                            return item.id != id
                        })
                    }
                    Text(")")
                    CustomDropSpot(puzzleComplete: thingsToDrop.count == 0)
                    
                }
            }.frame(height: 50)
            
            HStack(spacing: 50){
                ForEach(thingsToDrop, id:\.id){
                    item in
                    Text(item.text)
                        .font(.system(size: 40))
                        .shadow(
                            color:.blue, radius: 3)
                        .draggable(item)
                        
                        
                }
            }
            Spacer()
            if thingsToDrop.count == 0 {
                NextPageButton( destination: FunctionStructureIntroView())
                
            }
            
                
        }
    }
}

struct QuotesQuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesQuizView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
