//
//  EmojiChessGame.swift
//  Chess
//
//  Created by FordTan on 2023/3/23.
//

import Foundation
/*
 MVC: Model View Controller, OO
 
 MVVM: Model View ViewModel, FP
 

 */

//MARK: ViewModel
class EmojiChessGame {
    
//    static func createPieceContent(player: ChessGame<String>.Player, rank: ChessGame<String>.Rank) -> String {
//        return "😄"
//    }
    
    private var chessGame: ChessGame<String> = ChessGame<String> { (player, rank) -> String in
        switch rank {
        case .king:
            return player == .white ? "♔" : "♚"
        case .queen:
            return player == .white ? "♕" : "♛"
        case .rook:
            return player == .white ? "♖" : "♜"
        case .bishop:
            return player == .white ? "♗" : "♝"
        case .knight:
            return player == .white ? "♘" : "♞"
        case .pawn:
            return player == .white ? "♟" : "♙"
        }
        return "😊"
    }
    
//    private var chessGame: ChessGame<String> = ChessGame<String>(pieceContentFactory: EmojiChessGame.createPieceContent(player:rank:))
    
    func pieceAt(col: Int, row: Int) -> ChessGame<String>.Piece? {
        return chessGame.pieceAt(col: col, row: row)
    }
}

