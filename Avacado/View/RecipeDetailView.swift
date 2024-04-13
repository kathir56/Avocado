//
//  RecipeDetailView.swift
//  Avacado
//
//  Created by Kathiravan Murali on 03/02/24.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe : Recipe
    @Environment(\.presentationMode) var presentation
    @State private var scaling : Bool = false
    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false)
        {
            VStack(alignment:.center,spacing: 0)
            {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group
                {
                    //title
                    Text(recipe.title)
                        .font(.system(.largeTitle,design: .serif,weight: .bold))
                        .multilineTextAlignment(.center)
                        .padding(.top,10)
                        .foregroundStyle(Color.colorGreenAdaptive)
                    
                    //rating
                    RecipeRatingView(recipe: recipe)
                    
                    //cooking
                    RecipeCookingView(recipe: recipe)
                    
                    //ingredients
                    Text("Ingredients")
                        .modifier(TitleModifier())
                    VStack(alignment:.leading,spacing: 5)
                    {
                        ForEach(recipe.ingredients,id: \.self){ item in
                            VStack(alignment:.leading,spacing: 5)
                            {
                                
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }// Vstack
                        }// Mark - loop
                    }// Vstack
                    
                    //instructions
                    Text("Instructions")
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions,id: \.self){item in
                        VStack(alignment: .center, spacing: 5, content: {
                            
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .font(.system(.title,weight: .ultraLight))
                                .frame(width: 42,height: 42,alignment: .center)
                                .imageScale(.large)
                                .foregroundStyle(.colorGreenAdaptive)
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body,design: .serif))
                                .frame(minHeight: 100)
                        })
                    }
                }// Mark - group
                .padding(.horizontal,24)
                .padding(.vertical,12)
            }// Vstack
        }// Mark - scrollvertical
        .ignoresSafeArea(.all)
        .overlay {
            
            HStack
            {
                Spacer()
                
                VStack 
                {
                    Button 
                    {
                        self.presentation.wrappedValue.dismiss()
                    } 
                    label:
                    {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundStyle(.white)
//                            .opacity(scaling ? 1.0 : 0.6)
//                            .scaleEffect(scaling ? 1.2 : 0.8)
//                            .animation(.smooth(duration: 1.5).repeatForever(autoreverses: true))
                    }// Mark - button
                    .padding(.top,24)
                    .padding(.trailing,20)
                    
                    Spacer()
                }// Vstack

            }// Hstack

        }// Mark - overlay
        .onAppear(perform: {
            self.scaling.toggle()
        })
        
        
    }
}

#Preview {
    RecipeDetailView(recipe: recipesData[0])
}
