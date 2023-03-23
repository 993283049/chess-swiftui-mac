//
//  LetterChessGameView.swift
//  Chess
//
//  Created by FordTan on 2023/3/23.
//

import Foundation
import SwiftUI
struct LetterChessGameView: View {
    var letterChessGame: LetterChessGame
    
    var body: some View {
        // 8行 * 8列
        VStack { // 8 行
            // 8 views
            ForEach(0..<8) {i in
//                Text("😊")
                HStack { // 8 列
                    ForEach(0..<8) {col in
//                        PieceView()
                        PieceView(piece: letterChessGame.pieceAt(col: col, row: 7-i))
                    }
                }
                
            }
        }
        
            .font(.largeTitle)
            .padding()
    }
}

//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmojiChessGameView(emojiChessGame: EmojiChessGame())
////        EmojiChessGame()
//    }
//}
