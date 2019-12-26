//
//  ContentView.swift
//  DesignCode
//
//  Created by HankTseng on 2019/12/16.
//  Copyright © 2019 HyerDesign. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var show = false
    @State var viewState: CGSize = CGSize.zero

    var body: some View {
        ZStack {

            TitleView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)

            CardButtomView()
                .blur(radius: show ? 20 : 0)
                .offset(y: show ? 400 : 300)
                .animation(.default)


            CardView()
                .background(show ? Color.black : Color.orange)
                .cornerRadius(12.0)
                .shadow(radius: 20) //順序有差 shadow要放最後
                .offset(x: 0, y: show ? -320 : -40)
                .scaleEffect(0.85)
                .rotationEffect(Angle(degrees: show ? 20 : 0))
                .rotation3DEffect(Angle(degrees: show ? 50 : 0), axis: (x: 10.0, y: 10.0, z: 10.0))
                .animation(.default)
                .blendMode(.darken)
            .offset(self.viewState)

            CardView()
                .background(show ? Color.black : Color.orange)
                .cornerRadius(12.0)
                .shadow(radius: 20) //順序有差 shadow要放最後
                .offset(x: 0, y: show ? -120 : -20)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: show ? 15 : 0))
                .rotation3DEffect(Angle(degrees: show ? 40 : 0), axis: (x: 10.0, y: 10.0, z: 10.0))
                .animation(.default)
                .blendMode(.darken)
                .offset(self.viewState)
            

            CardView()

                .background(show ? Color.black : Color.orange)
                .cornerRadius(12.0)
                .shadow(radius: 20) //順序有差 shadow要放最後
                .offset(self.viewState)
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: show ? 5 : 0))
                .rotation3DEffect(Angle(degrees: show ? 30 : 0), axis: (x: 10.0, y: 10.0, z: 10.0))
                .animation(.default)
                .onTapGesture {
                    self.show.toggle()//toggle() 就是正轉負 負轉正的意思
            }
            .gesture(
                DragGesture()
                    .onChanged { value in
                        //DragGesture的onChanged會給我們他的變動值
                        self.viewState = value.translation
                        self.show = true
                }
                .onEnded { value in
                    self.viewState = CGSize.zero
                    self.show = false
                }
            )
            


            

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

    }
}
