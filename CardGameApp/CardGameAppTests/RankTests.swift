//
//  RankTests.swift
//  CardGameAppTests
//
//  Created by kimdo2297 on 2020/03/02.
//  Copyright © 2020 Jason. All rights reserved.
//

import XCTest
@testable import CardGameApp

class RankTests: XCTestCase {
    
    func testIsFourCardSuccess() {
        // 1. given
        let cards = [Card(suit: .club, number: .ace),
                     Card(suit: .club, number: .three),
                     Card(suit: .club, number: .two),
                     Card(suit: .club, number: .four),
                     Card(suit: .diamond, number: .four),
                     Card(suit: .heart, number: .four),
                     Card(suit: .spade, number: .four)]
        // 3. then
        if let num = Participant.Rank.isFourCard(cards: cards) {
            XCTAssertEqual(num, Card.Number.four)
        }
    }
    
    func testIsFourCardFail() {
        // 1. given
        let cards = [Card(suit: .club, number: .ace),
                     Card(suit: .club, number: .three),
                     Card(suit: .club, number: .two),
                     Card(suit: .club, number: .four),
                     Card(suit: .diamond, number: .four),
                     Card(suit: .heart, number: .four)]
         // 3. then
        XCTAssertNil(Participant.Rank.isFourCard(cards: cards))
    }
    
    func testIsStraightSuccess() {
        // 1. given
        let cards = [Card(suit: .club, number: .ace),
                     Card(suit: .club, number: .two),
                     Card(suit: .club, number: .three),
                     Card(suit: .club, number: .four),
                     Card(suit: .diamond, number: .five),
                     Card(suit: .heart, number: .four),
                     Card(suit: .spade, number: .four)]
         // 3. then
        XCTAssertEqual(Participant.Rank.isStraight(cards: cards), Card.Number.five)
    }
    
    func testIsStraightFail() {
        // 1. given
        var cards = [Card(suit: .club, number: .ace),
                     Card(suit: .club, number: .two),
                     Card(suit: .club, number: .three),
                     Card(suit: .club, number: .four),
                     Card(suit: .diamond, number: .five),
                     Card(suit: .heart, number: .six),
                     Card(suit: .spade, number: .seven)]
         // 3. then
        XCTAssertNil(Participant.Rank.isStraight(cards: cards))
        
        // 1. given
        cards = [Card(suit: .club, number: .ace),
                     Card(suit: .club, number: .three),
                     Card(suit: .club, number: .three),
                     Card(suit: .club, number: .five),
                     Card(suit: .diamond, number: .five),
                     Card(suit: .heart, number: .six),
                     Card(suit: .spade, number: .seven)]
         // 3. then
        XCTAssertNil(Participant.Rank.isStraight(cards: cards))
    }
}