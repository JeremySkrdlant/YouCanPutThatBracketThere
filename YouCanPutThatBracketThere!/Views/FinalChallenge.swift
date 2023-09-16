//
//  FinalChallenge.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/16/23.
//

import SwiftUI

struct FinalChallenge: View {
    //When they win, Give them some sweet png swag.  
    
    var body: some View {
            VStack{
                Text("Final Challenges")
                    .font(.system(.title))
                Divider()
                
                ScrollView{
                    Text("Insert struct with array and string variable at top, two functions")
                    Text("Have the students insert the brackets and commas")
                }
                
                ScrollView(.horizontal){
                    Text("Put all the drag and drop options in here.")
                }
        }
    }
}

struct FinalChallenge_Previews: PreviewProvider {
    static var previews: some View {
        FinalChallenge()
    }
}
