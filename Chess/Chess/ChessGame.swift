//
//  ChessGame.swift
//  Chess
//
//  Created by FordTan on 2023/3/23.
//

import Foundation

/*
 MVC: Model View Controller, OO
 
 MVVM: Model View ViewModel, FP
 

 */

//MARK: Model
struct ChessGame<PieceContent> {
    private var pieces: Set<Piece>
      
    init() {
        pieces = []
    }
    func pieceAt(col: Int, row: Int) -> Piece? {
        for piece in pieces {
            if piece.col == col && piece.row == row {
                return piece
            }
        }
        return nil
    }
    
    enum Player {
        case white
        case black
    }
    enum Rank {
        case king
        case queen
        case rook
        case bishop
        case knight
        case pawn
    }
    struct Piece: Equatable, Hashable {
        let col: Int
        let row: Int
        let rank: Rank
        var player: Player
        var content: PieceContent
        
        static func ==(lhs: Piece, rhs: Piece) -> Bool {
            return lhs.col == rhs.col && lhs.row == rhs.row && lhs.rank == rhs.rank && lhs.player == rhs.player
        }
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(col)
            hasher.combine(row)
            hasher.combine(rank)
            hasher.combine(player)
        }
    }
}
