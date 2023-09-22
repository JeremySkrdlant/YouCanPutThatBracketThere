//
//  CustomDropSpot.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/14/23.
//

import SwiftUI
import AVFoundation

struct CustomDropSpot: View {
    var correctValue:String?
    var puzzleComplete = false
    var succesCallback:(UUID)->Void = {_ in}
    
    @State private var currentString = ""
    @State private var successfulDrop = false;
    @State private var correctSound:AVAudioPlayer?
    @State private var wrongSound:AVAudioPlayer?
    
    var body: some View {
        VStack{
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
                                    correctSound?.play()
                                    return true
                                }
                            }
                           
                            wrongSound?.play()
                            
                            return false
                        }
                }else {
                    Color.white
                        .frame(width:0, height: 0)
                }
            }
        }.onAppear{
           //Function here
            guard let correctURL = Bundle.main.url(forResource: "Correct", withExtension: "wav") else {
                return
            }
            guard let wrongURL = Bundle.main.url(forResource: "Wrong", withExtension: "wav") else {
                return
            }
            
            Task{
                correctSound = try AVAudioPlayer(contentsOf: correctURL)
                wrongSound = try AVAudioPlayer(contentsOf: wrongURL)
            }
        }

    }
struct CustomDropSpot_Previews: PreviewProvider {
    static var previews: some View {
        CustomDropSpot()
        }
    }
}


