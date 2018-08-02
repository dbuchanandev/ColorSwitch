//
//  GameScene.swift
//  ColorSwitch
//
//  Created by Donavon on 8/2/18.
//  Copyright © 2018 Donavon Buchanan. All rights reserved.
//

import SpriteKit
//import GameplayKit


class GameScene: SKScene {
    
    //TODO: See if this can be initialized here later as non-optional
    var colorSwitch: SKSpriteNode?
    
    override func didMove(to view: SKView) {
        
        layoutScene()
        
    }
    
    func layoutScene() {
        backgroundColor = .black
        
        colorSwitch = SKSpriteNode(imageNamed: "ColorCircle")
        colorSwitch?.size = CGSize(width: frame.size.width/3, height: frame.size.width/3)
        colorSwitch?.position = CGPoint(x: frame.midX, y: frame.minY + (colorSwitch?.size.height)!)
        colorSwitch?.physicsBody = SKPhysicsBody(circleOfRadius: (colorSwitch?.size.width)!/2)
        colorSwitch?.physicsBody?.categoryBitMask = PhysicsCategories.switchCategory
        
        spawnBall()
        addChild(colorSwitch!)
    }
    
    func spawnBall() {
        let ball = SKSpriteNode(imageNamed: "ball")
        ball.size = CGSize(width: 30.0, height: 30.0)
        ball.position = CGPoint(x: frame.midX, y: frame.maxY)
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width/2)
        ball.physicsBody?.categoryBitMask = PhysicsCategories.ballCategory
        ball.physicsBody?.contactTestBitMask = PhysicsCategories.switchCategory
        ball.physicsBody?.collisionBitMask = PhysicsCategories.none
        addChild(ball)
    }
    
}
