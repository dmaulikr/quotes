//
//  QuestionBank.swift
//  Motivation Quotes App
//
//  Created by Matin Shoghi on 6/8/17.
//  Copyright © 2017 Matin Shoghi. All rights reserved.
//

import Foundation

class quotes {
    var quotes: [String] = [
    "If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.",
    "No matter how small you start, start something that matters.",
    "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."
    ]
    
    var quotesImage: [String] = [
        "thumb_steve", "thumb_brendon", "thumb_theodore"
    ]
    
    var currentQuoteIndex: Int = 0
    
    func getNextQuote() -> String {
        if currentQuoteIndex == (quotes.count - 1) {
            currentQuoteIndex = 0
        } else {
            currentQuoteIndex += 1
        }
        
        return quotes[currentQuoteIndex]
    }
    
    func getQuoteImageName() -> String {
        return self.quotesImage[currentQuoteIndex]
    }
    
}
