//
//  HeroesList.swift
//  HeroesApp
//
//  Created by Muhammad Fawwaz Mayda on 10/07/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import SwiftUI

struct HeroesList: View {
    var body: some View {
        List(heroes){hero in
            ZStack {
                HeroRow(hero: hero)
                NavigationLink(destination: HeroDetail(hero: hero)) {
                    EmptyView()
                }
            }
        }.navigationBarTitle(Text("Pahlawan Indonesia"),displayMode: .automatic)
    }
}

struct HeroesList_Previews: PreviewProvider {
    static var previews: some View {
        HeroesList()
    }
}
