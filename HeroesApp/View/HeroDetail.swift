//
//  HeroDetail.swift
//  HeroesApp
//
//  Created by Muhammad Fawwaz Mayda on 10/07/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI

struct HeroDetail: View {
    var hero: Hero
    var body: some View {
        ScrollView {
            VStack {
                Spacer(minLength: 20.0)
                Text(hero.name)
                    .font(.largeTitle)
                Spacer(minLength: 80.0)
                Image(hero.photo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240, height: 240, alignment: .center)
                Spacer(minLength: 20.0)
                Text(hero.desc)
            }.padding(EdgeInsets(top: 0, leading: 18, bottom: 18, trailing: 18))
        }
    }
}

struct HeroDetail_Previews: PreviewProvider {
    static var previews: some View {
        HeroDetail(hero: heroes[1])
    }
}
