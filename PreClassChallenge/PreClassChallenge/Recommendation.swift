//
//  Recommendation.swift
//  PreClassChallenge
//
//  Created by Habib Miranda on 5/20/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import Foundation

class Recommendation: Equatable {
    
    private let kIdea = "ideaKey"
    private let kRecommender = "recommenderKey"
    
    var idea: String
    var recommender: String
    
    var dictionaryCopy: [String: AnyObject] {
        return[kIdea: idea, kRecommender: recommender]
    }
    
    init(idea: String, recommender: String) {
        self.idea = idea
        self.recommender = recommender
    }
    
    init?(dictionary: [String: AnyObject]) {
        guard let idea = dictionary[kIdea] as? String,
            recommender = dictionary[kRecommender] as? String else {
                return nil
        }
        
        self.idea = idea
        self.recommender = recommender
    }
}

func ==(lhs: Recommendation, rhs: Recommendation) -> Bool {
    return lhs.idea == rhs.idea && lhs.recommender == rhs.recommender
}