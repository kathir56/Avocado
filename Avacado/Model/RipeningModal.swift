//
//  RipeningModal.swift
//  Avacado
//
//  Created by Kathiravan Murali on 03/02/24.
//

import SwiftUI

struct Ripening: Identifiable {
  var id = UUID()
  var image: String
  var stage: String
  var title: String
  var description: String
  var ripeness: String
  var instruction: String
}

