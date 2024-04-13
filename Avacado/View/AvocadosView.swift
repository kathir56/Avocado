//
//  AvocadosView.swift
//  Avacado
//
//  Created by Kathiravan Murali on 31/01/24.
//

import SwiftUI

struct AvocadosView: View {
    @State private var pulStateAnimation : Bool = false
    var body: some View {
        
        VStack
        {
            Spacer()
            
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240,height: 240,alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12,x: 0,y: 8)
                .scaleEffect(pulStateAnimation ? 1.0 : 0.9)
                .opacity(pulStateAnimation ? 1.0 : 0.9)
                .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true))
            
            VStack
            {
                Text("Avocado".uppercased())
                    .font(.system(size: 42,weight: .bold,design: .serif))
                    .foregroundStyle(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4,x: 0,y: 4 )
                
                Text("Avocado trees contain enzymes that prevent the fruit from ever ripening on the tree, allowing farmers to use the trees as storage devices for up to 7 months after they reach maturity.")
                    .lineLimit(nil)
                    .font(.system(.headline,design: .serif))
                    .foregroundStyle(.colorGreenLight)
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640,minHeight: 120)

            }//vstack
            .padding()
            
            Spacer()
        }// Vstack
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
      
        .onAppear()
        {
            pulStateAnimation.toggle()
        }
    }
}

#Preview {
    AvocadosView()
}
