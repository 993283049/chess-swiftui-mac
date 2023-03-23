//
//  LetterChessGame.swift
//  Chess
//
//  Created by FordTan on 2023/3/23.
//

import Foundation

class LetterChessGame {
    private var chessGame: ChessGame<String> = createChessGame()
    
    private static func createChessGame() -> ChessGame<String> {
        return ChessGame<String> { (player, rank) -> String in
            switch rank {
            case .king:
                return player == .white ? "k" : "K"
            case .queen:
                return player == .white ? "q" : "Q"
            case .rook:
                return player == .white ? "r" : "R"
            case .bishop:
                return player == .white ? "b" : "B"
            case .knight:
                return player == .white ? "n" : "N"
            case .pawn:
                return player == .white ? "p" : "P"
            }
        }
    }
    
    func pieceAt(col: Int, row: Int) -> ChessGame<String>.Piece? {
        return chessGame.pieceAt(col: col, row: row)
    }
}
