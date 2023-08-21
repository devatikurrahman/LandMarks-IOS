//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Atikur Rahman on 8/21/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }, label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        })
//        Button {
//
//        } lable: {
//            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
//                .labelStyle(.iconOnly)
//                .foregroundColor(isSet ? .yellow : .gray)
//        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
