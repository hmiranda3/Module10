//
//  RecommendationController.swift
//  PreClassChallenge
//
//  Created by Habib Miranda on 5/20/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

import Foundation

class RecommendationController {
    
    private let kRecommendations = "recommendationKey"
    
    static let sharedController = RecommendationController()
    
    var recommendations: [Recommendation] = []
    
    init() {
        loadFromPersistentStorage()
    }
    
    func addRecommendation(recommendation: Recommendation) {
        recommendations.append(recommendation)
        saveToPersistentStorage()
    }
    
    func removeRecommendation(recommendation: Recommendation) {
        if let index = recommendations.indexOf(recommendation) {
            recommendations.removeAtIndex(index)
            saveToPersistentStorage()
        }
    }
    
    func saveToPersistentStorage() {
        NSUserDefaults.standardUserDefaults().setObject(recommendations.map{$0.dictionaryCopy}, forKey: kRecommendations)
    }
    
    func loadFromPersistentStorage() {
        guard let recommendationDictionary = NSUserDefaults.standardUserDefaults().objectForKey(kRecommendations) as? [[String: AnyObject]] else {
            return
        }
        self.recommendations = recommendationDictionary.flatMap{Recommendation(dictionary : $0)}
    }
}