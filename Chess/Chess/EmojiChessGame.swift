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
    private var chessGame: ChessGame<String> = ChessGame<String>()
    
    func pieceAt(col: Int, row: Int) -> ChessGame<String>.Piece? {
        return chessGame.pieceAt(col: col, row: row)
    }
}

