//
//  FactsView.swift
//  Avacado
//
//  Created by Kathiravan Murali on 03/02/24.
//

import SwiftUI

struct FactsView: View {
    
    var fact : Fact
    
    var body: some View {
        
        ZStack {
            
            Text(fact.content)
                .padding(.leading,55)
                .padding(.trailing,10)
                .padding(.vertical,3)
                .font(.footnote)
                .frame(width: 300,height: 135,alignment: .center)
                .background(LinearGradient(colors: [.colorGreenMedium,.colorGreenLight], startPoint: .leading, endPoint: .trailing))
                .lineLimit(6)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .multilineTextAlignment(.leading)
            .foregroundStyle(.white)
            
            ZStack {
                
                Circle()
                    .fill(Color.colorAppearanceAdaptive)
                    .frame(width: 90,alignment: .center)
                    .offset(x: -150)
                
                Circle()
                    .fill(LinearGradient(colors: [.colorGreenMedium,.colorGreenLight], startPoint: .trailing, endPoint: .leading))
                    .frame(width: 82,alignment: .center)
                    .offset(x: -150)
                
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 74,alignment: .center)
                    .offset(x: -150)
                
                Image(fact.image)
                    .resizable()
                    .frame(width: 66,height: 66,alignment: .center)
                    .clipShape(RoundedRectangle(cornerRadius: 50.0 ))
                    .offset(x: -150)
            }
                
            
        }// Zstack
    }
}

#Preview {
    FactsView(fact: factsData[0])
}
