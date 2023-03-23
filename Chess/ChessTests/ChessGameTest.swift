//
//  ChessGameTest.swift
//  ChessTests
//
//  Created by FordTan on 2023/3/23.
//

import XCTest

@testable import Chess

final class ChessGameTest: XCTestCase {
    
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
    
    func testPieceAt() {
        let chessGame = ChessGameTest.createChessGame()
        XCTAssertNotNil(chessGame.pieceAt(col: 0, row: 1))

        let bottomLeftRook = chessGame.pieceAt(col: 0, row: 0)
        XCTAssertNotNil(bottomLeftRook)
        XCTAssertTrue(bottomLeftRook!.player.isWhite)
        XCTAssertEqual(.rook, bottomLeftRook!.rank)
    }
    
}
