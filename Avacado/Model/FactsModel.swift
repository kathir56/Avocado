//
//  FactsModel.swift
//  Avacado
//
//  Created by Kathiravan Murali on 03/02/24.
//

import SwiftUI

struct Fact : Identifiable
{
    var id = UUID()
    var image : String
    var content : String
}
