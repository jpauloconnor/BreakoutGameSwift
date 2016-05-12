//
//  Playing.swift
//  BreakoutSpriteKitTutorial
//
//  Created by Michael Briscoe on 1/16/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import SpriteKit
import GameplayKit

class Playing: GKState {
  unowned let scene: GameScene
  
  init(scene: SKScene) {
    self.scene = scene as! GameScene
    super.init()
  }
  
  override func didEnterWithPreviousState(previousState: GKState?) {

  }
  
  override func updateWithDeltaTime(seconds: NSTimeInterval) {

  }
  
  override func isValidNextState(stateClass: AnyClass) -> Bool {
    return stateClass is GameOver.Type
  }

}
