//
//  GridView.swift
//  Dashboard App UI
//
//  Created by Mahesh Prasad on 15/01/21.
//

import SwiftUI

struct GridView: View {
    
    var fitness_Data : [Fitness]
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        
        LazyVGrid(columns: columns, spacing: 30, content: {
            ForEach(fitness_Data){fitness in
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                    VStack(alignment: .leading, spacing: 20, content: {
                        Text(fitness.title)
                            .foregroundColor(.white)
                        
                        Text(fitness.data)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.top, 10)
                        
                        HStack{
                            Spacer()
                            
                            Text(fitness.suggest)
                                .foregroundColor(.white)
                        }
                    })
                    .padding()
                    
                    //image name same as color name...
                    .background(Color(fitness.image))
                    .cornerRadius(20)
                    
                    //shadow
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                    
                    //top Image
                    
                    Image(fitness.image)
                        .renderingMode(.template)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.white.opacity(0.12))
                        .clipShape(Circle())
                })
            }
            
        }).padding(.horizontal)
        .padding(.top, 25)
    }
}

