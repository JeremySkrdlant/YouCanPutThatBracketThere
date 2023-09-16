//
//  FunctionsBracketsQuiz.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/16/23.
//

import SwiftUI

struct FunctionsBracketsQuiz: View {
    @State var thingsToDrop = [ DragTextItem(text: "{"), DragTextItem(text: "}"), DragTextItem(text: "("), DragTextItem(text: ")")]
    var body: some View {
        VStack {
            Text("Drag and Drop the parenthesis and brackets in the correct spots.")
                .font(.system(.title))
            Divider()
            VStack (alignment:.leading){
                HStack{
                    Text("func")
                    CustomDropSpot(puzzleComplete: thingsToDrop.count == 0)
                    Text("doSomething")
                    CustomDropSpot(correctValue: "("){
                        id in
                        thingsToDrop = thingsToDrop.filter({ item in
                            return item.id != id
                        })
                    }
                    Text("greeting:String")
                    CustomDropSpot(correctValue: ")"){
                        id in
                        thingsToDrop = thingsToDrop.filter({ item in
                            return item.id != id
                        })
                    }
                    CustomDropSpot(correctValue: "{"){
                        id in
                        thingsToDrop = thingsToDrop.filter({ item in
                            return item.id != id
                        })
                    }
                }
                HStack {
                    Text("print(\"hello world\")")
                    CustomDropSpot(puzzleComplete: thingsToDrop.count == 0)
                }
                Text("let x = 0")
                CustomDropSpot(correctValue: "}"){
                    id in
                    thingsToDrop = thingsToDrop.filter({ item in
                        return item.id != id
                    })
                }
            }
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
                NextPageButton( destination: SquareBracketsIntro())
                
            }
        }
    }
}

struct FunctionsBracketsQuiz_Previews: PreviewProvider {
    static var previews: some View {
        FunctionsBracketsQuiz()
    }
}
