//
//  HeroRow.swift
//  HeroesApp
//
//  Created by Muhammad Fawwaz Mayda on 10/07/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI

struct HeroRow: View {
    var hero: Hero
    var body: some View {
        HStack{
            Image(hero.photo)
            .resizable()
            .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            
            VStack(alignment: .leading, spacing: 0) {
                Text(hero.name)
                    .font(Font.system(size: 20))
                Text(hero.desc).lineLimit(4)
                    .font(Font.system(size: 14))
            }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
        }.padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
    }
}

struct HeroRow_Previews: PreviewProvider {
    static var previews: some View {
        HeroRow(hero: heroes[2])
    }
}
