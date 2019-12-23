//
//  ContentView.swift
//  DesignCode
//
//  Created by HankTseng on 2019/12/16.
//  Copyright © 2019 HyerDesign. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {

            TitleView()
                .blur(radius: 20)

            CardButtomView()
                .blur(radius: 20)


            CardView()
                .offset(x: 0, y: -80)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees: 20))
                .rotation3DEffect(Angle(degrees: 50), axis: (x: 10.0, y: 10.0, z: 10.0))
                .blendMode(.darken)

            CardView()
                .offset(x: 0, y: -40)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: 15))
                .rotation3DEffect(Angle(degrees: 40), axis: (x: 10.0, y: 10.0, z: 10.0))
                .blendMode(.darken)


            CardView()
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: 5))
                .rotation3DEffect(Angle(degrees: 30), axis: (x: 10.0, y: 10.0, z: 10.0))
                .blendMode(.darken)


            

        }

    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.init("colorPink"))
                        .multilineTextAlignment(.center)
                        .padding([.top, .trailing])
                    Text("Certificate")
                        .foregroundColor(.white)

                }
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
            }
            .padding(.horizontal)
            Spacer()
            Image("Background")
            
        }
        .frame(width: 240, height: 140, alignment: .center)
        .background(Color.black)
        .cornerRadius(12.0)
            .shadow(radius: 20) //順序有差 shadow要放最後
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("The Title")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            Image("Illustration5")
                .resizable()
                .frame(width: 80, height: 80)

            Spacer()
        }.padding()
    }
}

struct CardButtomView: View {
    var body: some View {
        VStack{
            Rectangle()
                .frame(
                    width: 60, height: 6)
                .cornerRadius(3.0)
                .opacity(0.1)

            Text("wdvbjuygbnm,loiuhgcxserthjkloiuhgvcdrghj")
                .lineLimit(10)
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .padding(.horizontal)
        .background(Color.white)
        .cornerRadius(30.0)
        .shadow(radius: 20)
        .offset(y: 400)
    }
}
