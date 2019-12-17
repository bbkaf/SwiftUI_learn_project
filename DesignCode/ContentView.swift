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
                Image("Logo")
                    .resizable()
                    .frame(width: 30.0, height: 30.0)
            }
            Image("Background")
        }
        .background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
        .cornerRadius(12.0)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
