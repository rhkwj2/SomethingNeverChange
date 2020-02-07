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
    
    func drawChatBubble() {
        
        // 對話框路徑
        let chatBubblePath = UIBezierPath()
        chatBubblePath.move(to: CGPoint(x: 30, y: 0))
        print("1. \(CGPoint(x: 30, y: 0))")
        
        chatBubblePath.addLine(to: CGPoint(x: containerView.frame.width - 15, y: 0))
        print("2. \(CGPoint(x: containerView.frame.width - 15, y: 0))")
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: containerView.frame.width, y: 15), controlPoint: CGPoint(x: containerView.frame.width, y: 0))
        print("3. \(CGPoint(x: containerView.frame.width, y: 15))")
        print("4. \(CGPoint(x: containerView.frame.width, y: 0))")
        
        chatBubblePath.addLine(to: CGPoint(x: containerView.frame.width, y: elsaTextView.frame.height + 15))
        print("5. \(CGPoint(x: containerView.frame.width, y: elsaTextView.frame.height + 15))")
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: containerView.frame.width - 15, y: elsaTextView.frame.height + 30), controlPoint: CGPoint(x: containerView.frame.width, y: elsaTextView.frame.height + 30))
        print("6. \(CGPoint(x: containerView.frame.width - 15, y: elsaTextView.frame.height + 30))")
        print("7. \(CGPoint(x: containerView.frame.width, y: elsaTextView.frame.height + 30))")
        
        chatBubblePath.addLine(to: CGPoint(x: 30, y: elsaTextView.frame.height + 30))
        print("8. \(CGPoint(x: 30, y: elsaTextView.frame.height + 30))")
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: 15, y: elsaTextView.frame.height + 15), controlPoint: CGPoint(x: 15, y: elsaTextView.frame.height + 30))
        print("9. \(CGPoint(x: 15, y: elsaTextView.frame.height + 15))")
        print("10. \(CGPoint(x: 15, y: elsaTextView.frame.height + 30))")
        
        chatBubblePath.addLine(to: CGPoint(x: 15, y: 30))
        print("11. \(CGPoint(x: 15, y: 30))")
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: 0, y: 0), controlPoint: CGPoint(x: 5, y: 25))
        print("12. \(CGPoint(x: 0, y: 0))")
        print("13. \(CGPoint(x: 5, y: 25))")
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: 15, y: 15), controlPoint: CGPoint(x: 5, y: 10))
        print("14. \(CGPoint(x: 15, y: 15))")
        print("15. \(CGPoint(x: 5, y: 10))")
        
        chatBubblePath.addQuadCurve(to: CGPoint(x: 30, y: 0), controlPoint: CGPoint(x: 15, y: 0))
        print("16. \(CGPoint(x: 30, y: 0))")
        print("17. \(CGPoint(x: 15, y: 0))")
        
        chatBubblePath.close()
        
        let chatBubbleLayer = CAShapeLayer()
        chatBubbleLayer.path = chatBubblePath.cgPath
        containerView.layer.mask = chatBubbleLayer
        
    }
}
