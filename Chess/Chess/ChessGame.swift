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
      
    init(pieceContentFactory: (Player, Rank) -> PieceContent) {
        pieces = []
        initChessBoard(piceContentFactory: pieceContentFactory)
    }
    
    mutating func movePiece(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) {
        guard var movePiece = pieceAt(col: fromCol, row: fromRow) else {
            return
        }
        pieces.remove(movePiece)
//        movePiece.col = toCol
//        movePiece.row = toRow
        pieces.insert(Piece(col: 0, row: 3, rank: movePiece.rank, player: movePiece.player, content: movePiece.content))
    }
    private mutating func initChessBoard(piceContentFactory: (Player, Rank) -> PieceContent) {
        
        for i in 0..<8 {
            pieces.insert(Piece(col: i, row: 6, rank: .pawn, player: .black, content: piceContentFactory(.black, .pawn)))
            pieces.insert(Piece(col: i, row: 1, rank: .pawn, player: .white, content: piceContentFactory(.white, .pawn)))
        }
        
        for i in 0..<2 {
            pieces.insert(Piece(col: 0+7*i, row: 7, rank: .rook, player: .black, content: piceContentFactory(.black, .rook)))
            pieces.insert(Piece(col: 0+7*i, row: 0, rank: .rook, player: .white, content: piceContentFactory(.white, .rook)))
            
            pieces.insert(Piece(col: 1+5*i, row: 7, rank: .knight, player: .black, content: piceContentFactory(.black, .knight)))
            pieces.insert(Piece(col: 1+5*i, row: 0, rank: .knight, player: .white, content: piceContentFactory(.white, .knight)))
            
            pieces.insert(Piece(col: 2+3*i, row: 7, rank: .bishop, player: .black, content: piceContentFactory(.black, .bishop)))
            pieces.insert(Piece(col: 2+3*i, row: 0, rank: .bishop, player: .white, content: piceContentFactory(.white, .bishop)))
        }
        
        pieces.insert(Piece(col: 3, row: 7, rank: .queen, player: .black, content: piceContentFactory(.black, .queen)))
        pieces.insert(Piece(col: 3, row: 0, rank: .queen, player: .white, content: piceContentFactory(.white, .queen)))
        
        
        pieces.insert(Piece(col: 4, row: 7, rank: .king, player: .black, content: piceContentFactory(.black, .king)))
        pieces.insert(Piece(col: 4, row: 0, rank: .king, player: .white, content: piceContentFactory(.white, .king)))
        
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
        func isWhite() -> Bool {
            return self == .white
        }
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
        var col: Int
        var row: Int
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
