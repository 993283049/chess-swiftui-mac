//
//  ChessApp.swift
//  Chess
//
//  Created by FordTan on 2023/3/23.
//

import SwiftUI

@main
struct ChessApp: App {
    var body: some Scene {
        WindowGroup {
//            EmojiChessGameView()
            
//            let chessGame = EmojiChessGame()
//            EmojiChessGameView(emojiChessGame: chessGame)
            let chessGame = LetterChessGame()
            LetterChessGameView(letterChessGame: chessGame)
        }
    }
}
