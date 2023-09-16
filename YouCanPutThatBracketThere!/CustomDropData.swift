//
//  CustomDropData.swift
//  YouCanPutThatBracketThere!
//
//  Created by admin on 9/16/23.
//

import SwiftUI
import UniformTypeIdentifiers

struct DragTextItem:Codable, Identifiable, Transferable{
    
    var text:String
    var id = UUID()
    
    static var transferRepresentation: some TransferRepresentation{
        CodableRepresentation(contentType: .dragTextItem)
    }
}

extension UTType{
    static let dragTextItem = UTType(exportedAs: "com.jeremy.drawRoute.YouCanPutThatBracketThere-")
}
