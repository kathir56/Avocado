//
//  ContentView.swift
//  Avacado
//
//  Created by Kathiravan Murali on 31/01/24.
//

import SwiftUI

struct ContentView: View {
    
    var headersDatas : [Header] = headersData
    var factDatas : [Fact] = factsData
    var recipesDatas : [Recipe] = recipesData
    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false)
        {
            VStack(alignment:.center,spacing: 20)
            {
            
                ScrollView(.horizontal,showsIndicators: false)
                {
                    HStack(alignment:.top,spacing: 0)
                    {
                        ForEach(headersDatas) { item in
                            HeaderView(header: item)
                            
                        }//loop
                        
                    }// Hstack
                    
                }// Mark - scrollvertical
                
                Text("Avocado Dishes")
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                ScrollView(.horizontal,showsIndicators: false)
                {
                    HStack(alignment:.top,spacing: 60)
                    {
                        ForEach(factDatas){ item in
                            FactsView(fact: item)
                        }// Mark - loop
                    }// Hstack
                    .padding(.vertical)
                    .padding(.leading,60)
                    .padding(.trailing,20)
                }// Mark - scrollhorizontal
                
                Text("Avocado Recipes")
                    .modifier(TitleModifier())
                
                VStack(alignment: .center,spacing: 20) {
                    ForEach(recipesDatas) { item in
                        RecipeCardView(recipe: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                VStack(alignment:.center,spacing: 20)
                {
                    
                    Text("All About Avocado")
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask")
                        .font(.system(.body,design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.secondary)
                        .frame(minHeight: 60)
                    
                }// Vstack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom,85)
                
                
            }// Vstack
            
        }// Mark - scrollVeritcal
        .ignoresSafeArea(.all)
        .padding(0)
        
    }
}

struct TitleModifier:ViewModifier
{
    func body(content: Content) -> some View {
        
        content
            .font(.system(.largeTitle,design: .serif,weight: .bold))
            .foregroundStyle(.colorGreenAdaptive)
            .padding(8)
    }
}

#Preview {
    ContentView()
}
