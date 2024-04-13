//
//  HeaderView.swift
//  Avacado
//
//  Created by Kathiravan Murali on 03/02/24.
//

import SwiftUI

struct HeaderView: View {
    
    var header : Header
    
    @State private var showHeadline : Bool = false
    
    var slideAnimation : Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        
        ZStack
        {
            Image(header.image)
                .resizable()
                .scaledToFill()
            
            HStack(alignment:.top,spacing: 0)
            {
                Rectangle()
                    .fill(Color.colorGreenLight)
                    .frame(width: 4)
                
                VStack(alignment:.leading,spacing: 6)
                {
                    Text(header.headline)
                        .font(.system(.largeTitle,design: .serif))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .shadow(color: .black, radius: 10)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(12)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(.white)
                        .shadow(radius: 30)
                    
                }// Vstack
                .padding(.vertical,0)
                .padding(.horizontal,20)
                .frame(width: 281,height: 105)
                .background(Color.colorBlackTransparentLight)
                
            }// Hstack
            .frame(width: 285,height: 105)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideAnimation)
            .onAppear(perform: {
                showHeadline.toggle()
            })
            
        }// Zstack
        .frame(width: 480,height: 320,alignment: .center)
        
    }
}

#Preview {
    HeaderView(header: headersData[1])
}
