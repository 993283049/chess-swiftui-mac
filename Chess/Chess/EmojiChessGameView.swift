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
    var emojiChessGame: EmojiChessGame
    
    var body: some View {
        // 8行 * 8列
        VStack { // 8 行
            // 8 views
            ForEach(0..<8) {i in
//                Text("😊")
                HStack { // 8 列
                    ForEach(0..<8) {col in
//                        PieceView()
                        PieceView(piece: emojiChessGame.pieceAt(col: col, row: 7-i))
                    }
                }
                
            }
        }
        
            .font(.largeTitle)
            .padding()
    }
}

struct PieceView: View {
    var piece: ChessGame<String>.Piece?
    
    let fontScaleFactor: CGFloat = 0.9
    let cornerRadius: CGFloat = 8
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                RoundedRectangle(cornerRadius: 8).stroke()
                Text(piece?.content ?? "")
            }
            .font(Font.system(size: min(geometry.size.width, geometry.size.height)*fontScaleFactor))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiChessGameView(emojiChessGame: EmojiChessGame())
//        EmojiChessGame()
    }
}
