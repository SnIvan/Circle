//
//  MenuScene.swift
//  Assignment2
//
//  Created by Ivan on 2019-04-04.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//

import Foundation
import SpriteKit

class MenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor(red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0)
        addLogo()
        addLabels()
    }
    
    func addLogo() {
        let logo = SKSpriteNode(imageNamed: "logo-2")
        logo.size = CGSize(width: frame.size.width/2, height: frame.size.width/2)
        logo.position = CGPoint(x: frame.midX, y: frame.midY + frame.size.height/4)
        addChild(logo)
    }
    func addLabels() {
        let playLabel = SKLabelNode(text: "Tap to Play!")
        playLabel.fontName = "AvenirNext-Bold"
        playLabel.fontSize = 50.0
        playLabel.fontColor = UIColor.white
        playLabel.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(playLabel)
        
        let highscoreLabel = SKLabelNode(text: "Highscore: " + "\(UserDefaults.standard.integer(forKey: "Highscore"))")
        highscoreLabel.fontName = "AvenirNext-Bold"
        highscoreLabel.fontSize = 40.0
        highscoreLabel.fontColor = UIColor.white
        highscoreLabel.position = CGPoint(x: frame.midX, y: frame.midY - highscoreLabel.frame.size.height*4)
        addChild(highscoreLabel)
        
        let recentScoreLabel = SKLabelNode(text: "Recent Score:")
        recentScoreLabel.fontName = "AvenirNext-Bold"
        recentScoreLabel.fontSize = 40.0
        recentScoreLabel.fontColor = UIColor.white
        recentScoreLabel.position = CGPoint(x: frame.midX, y: highscoreLabel.position.y - recentScoreLabel.frame.size.height*2)
        addChild(recentScoreLabel)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = GameScene(size: view!.bounds.size)
        view!.presentScene(gameScene)
    }
}
