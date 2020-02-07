//
//  ElsaTableViewCell.swift
//  SomethingNeverChange
//
//  Created by Kim Yeon Jeong on 2020/2/4.
//  Copyright © 2020 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ElsaTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var elsaTextView: UITextView!
    @IBOutlet weak var containerView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func drawChatBubble() {
//
//        // chatBubble
//        let chatBubblePath = UIBezierPath()
//        chatBubblePath.move(to: CGPoint(x: 30, y: 0))
//
//        chatBubblePath.addLine(to: CGPoint(x: containerView.frame.width - 15, y: 0))
//
//        chatBubblePath.addQuadCurve(to: CGPoint(x: containerView.frame.width, y: 15), controlPoint: CGPoint(x: containerView.frame.width, y: 0))
//
//        chatBubblePath.addLine(to: CGPoint(x: containerView.frame.width, y: elsaTextView.frame.height + 15))
//
//        chatBubblePath.addQuadCurve(to: CGPoint(x: containerView.frame.width - 15, y: elsaTextView.frame.height + 30), controlPoint: CGPoint(x: containerView.frame.width, y: elsaTextView.frame.height + 30))
//
//        chatBubblePath.addLine(to: CGPoint(x: 30, y: elsaTextView.frame.height + 30))
//
//        chatBubblePath.addQuadCurve(to: CGPoint(x: 15, y: elsaTextView.frame.height + 15), controlPoint: CGPoint(x: 15, y: elsaTextView.frame.height + 30))
//
//
//        chatBubblePath.addLine(to: CGPoint(x: 15, y: 30))
//
//        chatBubblePath.addQuadCurve(to: CGPoint(x: 0, y: 0), controlPoint: CGPoint(x: 5, y: 25))
//
//        chatBubblePath.addQuadCurve(to: CGPoint(x: 15, y: 15), controlPoint: CGPoint(x: 5, y: 10))
//
//        chatBubblePath.addQuadCurve(to: CGPoint(x: 30, y: 0), controlPoint: CGPoint(x: 15, y: 0))
//
//
//        chatBubblePath.close()
//
//        let chatBubbleLayer = CAShapeLayer()
//        chatBubbleLayer.path = chatBubblePath.cgPath
//        containerView.layer.mask = chatBubbleLayer
//    }
    
    func drawChatBubble(textView: UITextView, containerView: UIView) {
        
        // chatBubble
        let chatBubblePath = UIBezierPath()
        chatBubblePath.move(to: CGPoint(x: 30, y: 0))

        chatBubblePath.addLine(to: CGPoint(x: containerView.frame.width - 15, y: 0))
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: containerView.frame.width, y: 15), controlPoint: CGPoint(x: containerView.frame.width, y: 0))
        
        chatBubblePath.addLine(to: CGPoint(x: containerView.frame.width, y: textView.frame.height + 15))
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: containerView.frame.width - 15, y: textView.frame.height + 30), controlPoint: CGPoint(x: containerView.frame.width, y: textView.frame.height + 30))
        
        chatBubblePath.addLine(to: CGPoint(x: 30, y: textView.frame.height + 30))
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: 15, y: textView.frame.height + 15), controlPoint: CGPoint(x: 15, y: textView.frame.height + 30))
        
        
        chatBubblePath.addLine(to: CGPoint(x: 15, y: 30))
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: 0, y: 0), controlPoint: CGPoint(x: 5, y: 25))
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: 15, y: 15), controlPoint: CGPoint(x: 5, y: 10))
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: 30, y: 0), controlPoint: CGPoint(x: 15, y: 0))
        
        
        chatBubblePath.close()
        
        let chatBubbleLayer = CAShapeLayer()
        chatBubbleLayer.path = chatBubblePath.cgPath
        containerView.layer.mask = chatBubbleLayer
    }
}
