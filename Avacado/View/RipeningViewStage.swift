//
//  RipeningViewStage.swift
//  Avacado
//
//  Created by Kathiravan Murali on 31/01/24.
//

import SwiftUI

struct RipeningViewStage: View {
    var ripeningsData : [Ripening] = ripeningData
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false)
        {
            VStack
            {
                Spacer()
                HStack(alignment:.center,spacing: 25)
                {
                    ForEach(ripeningsData){ item in
                        RipeningView(ripening: item)
                    }
                }// Hstack
                .padding(.vertical)
                .padding(.horizontal,20)
                Spacer()
                
            }
        }
    }
}

#Preview {
    RipeningViewStage()
}
