//
//  ContentView.swift
//  Chess
//
//  Created by FordTan on 2023/3/23.
//

import SwiftUI

/*
 MVC: Model View Controller, OO
 
 MVVM: Model View ViewModel, FP
 

 */

struct EmojiChessGameView: View {
    var body: some View {
        // 8行 * 8列
        VStack { // 8 行
            // 8 views
            ForEach(0..<8) {_ in
//                Text("😊")
                HStack { // 8 列
                    ForEach(0..<8) {_ in
                        PieceView()
                    }
                }
                
            }
        }
        
            .font(.largeTitle)
            .padding()
    }
}

struct PieceView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8).stroke()
            Text("😊")
        }
        
//            RoundedRectangle(cornerRadius: 8).stroke()
//            Text("😊")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiChessGameView()
    }
}
