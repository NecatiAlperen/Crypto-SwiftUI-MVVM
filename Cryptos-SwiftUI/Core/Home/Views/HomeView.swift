//
//  HomeView.swift
//  Cryptos-SwiftUI
//
//  Created by Necati Alperen IŞIK on 19.09.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPortfolio: Bool = false
    
    var body: some View {
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            
            VStack {
                HStack {
                    CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                        .animation(.none)
                    Spacer()
                    Text( showPortfolio ? "Portfolio" : "Live Prices")
                        .animation(.none)
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.theme.accent)
                    Spacer()
                    CircleButtonView(iconName: "chevron.right")
                        .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
                        .onTapGesture {
                            withAnimation(.spring()){
                                showPortfolio.toggle()
                            }
                        }
                }
                .padding(.horizontal)
                Spacer()
            }
        }
    }
}

#Preview {
    NavigationView {
        HomeView()
            .navigationBarHidden(true)
    }
    
}
