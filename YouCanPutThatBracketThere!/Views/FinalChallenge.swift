//
//  FinalChallenge.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/16/23.
//

import SwiftUI

struct FinalChallenge: View {
    //When they win, Give them some sweet png swag.
    //@State private var hasWon: Bool when true show winning screen.
    @State var thingsToDrop = [ DragTextItem(text: "["), DragTextItem(text: "]"), DragTextItem(text: "}"), DragTextItem(text: ","), DragTextItem(text: "{"), DragTextItem(text: "}"),DragTextItem(text: "("), DragTextItem(text: ")"), DragTextItem(text: "{"), DragTextItem(text: "}")]
    var body: some View {
        
        VStack(alignment: .center){
            Text("Final Challenges")
                .font(.system(.title))
            Divider()
            
            ScrollView{
                VStack{
                    VStack{
                        Text("Fill in the missing structures.").padding(.bottom)
                        Text("struct CompletedHomework {")
                        
                    }
                    HStack{
                        Text("var assignments = ")
                        CustomDropSpot(correctValue: "["){
                            id in
                            thingsToDrop = thingsToDrop.filter({ item in
                                return item.id != id
                            })
                        }
                        Text("\"This One\"")
                        CustomDropSpot(correctValue: ","){
                            id in
                            thingsToDrop = thingsToDrop.filter({ item in
                                return item.id != id
                            })
                        }
                        Text("\"That One\"")
                        CustomDropSpot(correctValue: "]"){
                            id in
                            thingsToDrop = thingsToDrop.filter({ item in
                                return item.id != id
                            })
                        }
                      
                    }
                    HStack{
                        Text("var class: String ")
                        
                        
                    }
                    HStack{
                        Text("func setClass")
                        CustomDropSpot(correctValue: "("){
                            id in
                            thingsToDrop = thingsToDrop.filter({ item in
                                return item.id != id
                            })
                        }
                        Text("class: String")
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
                    HStack{
                        Text("self.class = class")
                        CustomDropSpot(correctValue: "}"){
                            id in
                            thingsToDrop = thingsToDrop.filter({ item in
                                return item.id != id
                            })
                        }
                    }
                    VStack{
                        HStack{
                           Text("func turnInWork( )")
                            CustomDropSpot(correctValue: "{"){
                                id in
                                thingsToDrop = thingsToDrop.filter({ item in
                                    return item.id != id
                                })
                            }
                            
                        }
                  
                            VStack{
                                Text("var isTurnedIn: Bool").padding()
                                Text("isTurnedIn = true")
                                
                            
                            CustomDropSpot(correctValue: "}"){
                                id in
                                thingsToDrop = thingsToDrop.filter({ item in
                                    return item.id != id
                                })
                            }
                                CustomDropSpot(correctValue: "}"){
                                    id in
                                    thingsToDrop = thingsToDrop.filter({ item in
                                        return item.id != id
                                    })
                                }
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
                Spacer()
            if(thingsToDrop.count == 0){
                NextPageButton(destination: WinningScreenView())
            }
            
           
            
        }
    }
}

struct FinalChallenge_Previews: PreviewProvider {
    static var previews: some View {
        FinalChallenge().previewInterfaceOrientation(.landscapeLeft)
    }
}
