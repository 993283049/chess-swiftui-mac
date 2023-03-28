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
    
    private var chessGame: ChessGame<String> = EmojiChessGame.createChessGame()
    
    private static func createChessGame() -> ChessGame<String> {
        return ChessGame<String> { (player, rank) -> String in
            switch rank {
            case .king:
                return player.isWhite() ? "♔" : "♚"
            case .queen:
                return player.isWhite() ? "♕" : "♛"
            case .rook:
                return player.isWhite() ? "♖" : "♜"
            case .bishop:
                return player.isWhite() ? "♗" : "♝"
            case .knight:
                return player.isWhite() ? "♘" : "♞"
            case .pawn:
                return player.isWhite() ? "♟" : "♙"
            }
        }
    }
    
//    private var chessGame: ChessGame<String> = ChessGame<String>(pieceContentFactory: EmojiChessGame.createPieceContent(player:rank:))
    
    func pieceAt(col: Int, row: Int) -> ChessGame<String>.Piece? {
        return chessGame.pieceAt(col: col, row: row)
    }
}

