//
//  SquareBracketsIntro.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/16/23.
//

import SwiftUI

struct SquareBracketsIntro: View {
    var body: some View {
        ScrollView {
             VStack {
                 Text("Intro to Using Square brackets & Arrays")
                     .font(.system(.title))
                 Divider()
                 VStack{
                     Text("Overview of how to create an array")
                         .font(.title)
                     Text("Arrays are a group of objects held together in one variable. \nObjects are grouped in Square brackets, and seperated by commas.").padding(.top)
                     Text("var myArray = [\"apple\", \"banana\"]")
                         .padding().fontWeight(.bold)
                   
                     Text("That was an array of strings")
                    
                     Text("However, arrays can contain other types of variables also")
                         .padding()
                 }
                     VStack{
                         Text("var myNumberArray = [ 1, 2, 3, 4 ]")
                             .padding().fontWeight(.bold)
                         Text("Overview on how to call an element from an array.")
                             .font(.title)
                             .padding()
                       
                         Text("To get a single item from an array we need to look at where it is.")
                             .padding()
                         Text("var myFruitArray = [ \"apple\", \"orange\", \"banana\" ]")
                             .padding().fontWeight(.semibold)
                         Text("We pull the item based on its index.")
                             .padding()
                         HStack{
                             Text("The first item in the array will have an index of ")
                                 .padding(.vertical)
                             Text("ZERO").fontWeight(.bold)
                         }
                     }
                     VStack{
                         Text("The indexes count up by one from there.")
                             .padding()
                         Text("To grab one item I need to call my array, and put the index in the square brackets.")
                             .padding()
                         Text("var myFavoriteFruit = myFruitArray[0]")
                             .padding().fontWeight(.bold)
                         HStack{
                             Text("if I print my favorite fruit it would return")
                             Text("\"apple\"").fontWeight(.bold)
                             
                         }
                         
                     
                     }
                 Spacer()
                 NextPageButton(destination: SquareBracketQuiz())
             }
         }
     }
 }

struct SquareBracketsIntro_Previews: PreviewProvider {
    static var previews: some View {
        SquareBracketsIntro().previewInterfaceOrientation(.landscapeLeft)
    }
}
