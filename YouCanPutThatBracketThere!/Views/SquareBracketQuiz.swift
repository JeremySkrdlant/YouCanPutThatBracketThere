//
//  SquareBracketQuiz.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/16/23.
//

import SwiftUI

struct SquareBracketQuiz: View {
    @State var thingsToDrop = [ DragTextItem(text: "["), DragTextItem(text: "]"), DragTextItem(text: ","), DragTextItem(text: "\""), DragTextItem(text: "\""), DragTextItem(text: "\""), DragTextItem(text: "\"")]
    @State var secondDropGroup = [ DragTextItem(text: "["),DragTextItem(text: "]"), DragTextItem(text: "0"), DragTextItem(text: "1"), DragTextItem(text: "2" ) ]
   
    var body: some View {
        ScrollView{
            VStack {
                Text("Place the square brackets in the correct spot")
                    .font(.system(.title))
                Divider()
                //Add a challenge that is an array. The use has to put in the square brackets and commas and quotes since it is an array of 2 or three strings.
                VStack {
                    HStack {
                        VStack{
                            HStack{
                                Text("var codingFuel = ")
                                //drop spot with correct value bracket
                                CustomDropSpot(correctValue: "["){
                                    id in
                                    thingsToDrop = thingsToDrop.filter({ item in
                                        return item.id != id
                                    }) }
                            }
                            HStack{
                                CustomDropSpot(correctValue: "\""){
                                    id in
                                    thingsToDrop = thingsToDrop.filter({ item in
                                        return item.id != id
                                    }) }
                                Text(" Coffee")
                                CustomDropSpot(correctValue: "\""){
                                    id in
                                    thingsToDrop = thingsToDrop.filter({ item in
                                        return item.id != id
                                    }) }
                                CustomDropSpot(correctValue: ","){
                                    id in
                                    thingsToDrop = thingsToDrop.filter({ item in
                                        return item.id != id
                                    }) }
                            }
                            HStack{
                                CustomDropSpot(correctValue: "\""){
                                    id in
                                    thingsToDrop = thingsToDrop.filter({ item in
                                        return item.id != id
                                    }) }
                                Text("Dr. Pepper")
                                CustomDropSpot(correctValue: "\""){
                                    id in
                                    thingsToDrop = thingsToDrop.filter({ item in
                                        return item.id != id
                                    }) }
                                Text(",")
                                
                            }
                            HStack{
                                
                                Text(" \"Mountain Dew\"")
                                CustomDropSpot(correctValue: "]"){
                                    id in
                                    thingsToDrop = thingsToDrop.filter({ item in
                                        return item.id != id
                                    }) }
                            }
            
                        }
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
                VStack{
                    Text("Call \"Dr. Pepper\" from the array.").padding()
                    HStack{
                        Text("var theBest = codingFuel")
                        CustomDropSpot(correctValue: "["){
                            id in
                            secondDropGroup = secondDropGroup.filter({ item in
                                return item.id != id
                            }) }
                        CustomDropSpot(correctValue: "1"){
                            id in
                            secondDropGroup = secondDropGroup.filter({ item in
                                return item.id != id
                            }) }
                        CustomDropSpot(correctValue: "]"){
                            id in
                            secondDropGroup = secondDropGroup.filter({ item in
                                return item.id != id
                            }) }
                       
                        
                    }
                    HStack(spacing: 50){
                        ForEach(secondDropGroup, id:\.id){
                            item in
                            Text(item.text)
                                .font(.system(size: 40))
                                .shadow(
                                    color:.blue, radius: 3)
                                .draggable(item)
                        }
                    }
                }
                Spacer()
                NextPageButton(destination: FinalChallenge())
            }
        }
        
    }
}

struct SquareBracketQuiz_Previews: PreviewProvider {
    static var previews: some View {
        SquareBracketQuiz().previewInterfaceOrientation(.landscapeLeft)
    }
}
