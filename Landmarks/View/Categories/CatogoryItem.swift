//
//  CatogoryItem.swift
//  Landmarks
//
//  Created by Atikur Rahman on 8/25/23.
//

import SwiftUI

struct CatogoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CatogoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CatogoryItem(landmark: ModelData().landmarks[0])
    }
}
