//
//  GameScene.swift
//  Bamboo Breakout
//
//  Created by Michael Briscoe on 4/8/16.
//  Copyright (c) 2016 Razeware LLC. All rights reserved.
//

import SpriteKit

let BallCategoryName = "ball"
let PaddleCategoryName = "paddle"
let BlockCategoryName = "block"
let GameMessageName = "gameMessage"


class GameScene: SKScene {
  
  var isFingerOnPaddle = false
    
  override func didMoveToView(view: SKView) {
    super.didMoveToView(view)
    
   
    
    let borderBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
    borderBody.friction = 0
    self.physicsBody = borderBody
    
    physicsWorld.gravity = CGVector(dx: 0.0, dy: 0.0)
    let ball = childNodeWithName(BallCategoryName) as! SKSpriteNode
    ball.physicsBody!.applyImpulse(CGVector(dx: 2.0, dy: -2.0))
    
    
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let touch = touches.first
        let touchLocation = touch!.locationInNode(self)
        
        if let body = physicsWorld.bodyAtPoint(touchLocation) {
            if body.node!.name == PaddleCategoryName {
                print("Began touch on paddle")
                isFingerOnPaddle = true
            }
        }
    }
}
