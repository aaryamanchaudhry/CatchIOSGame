//
//  GameScene2.swift
//  Midterm
//
//  Created by Xcode User on 2020-10-28.
//  Copyright © 2020 Xcode User. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameScene2: SKScene {
    
     private var sportNode2 : SKSpriteNode?
    
  var background = SKSpriteNode(imageNamed: "city.jpg")
    
    override func didMove(to view: SKView) {
        
        background.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        background.alpha = 0.05
        
        addChild(background)
        
        sportNode2 = SKSpriteNode(imageNamed: "start.png")
        sportNode2?.size.height = 250
        sportNode2?.size.width = 600
        // sportNode?.position = CGPoint(x: size.height*0.1, y: size.width*0.5)
        sportNode2?.position = CGPoint(x: 1050, y: 250)
        
        addChild(sportNode2!)
        
        
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
        
        

    }
    func touchDown(atPoint pos : CGPoint) {
        
        if((sportNode2?.contains(pos))!){
        
        let scene = GameScene(fileNamed: "GameScene.sks")
        scene?.scaleMode = .aspectFill
        
        self.view?.presentScene(scene)
        
        }
    }
}
